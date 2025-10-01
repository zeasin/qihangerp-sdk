package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.wei.model.Order;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class WeiOrderApiHelper {

    /**
     * 拉取订单
     * @param
     * @return
     * @throws
     */
    public static ApiResultVo<Order> pullOrderList(LocalDateTime startTime, LocalDateTime  endTime, String accessToken, Integer pageSize, Integer status) {
        if(pageSize==null || pageSize<=0){
            pageSize = 100;
        }
        // 确保 startTime 和 endTime 的顺序
        if (startTime.isAfter(endTime)) {
            return ApiResultVo.error(ApiResultVoEnum.ParamsError,"结束时间必须大于开始时间");
        }
        // 计算两个时间点之间的天数差
        long daysBetween = ChronoUnit.DAYS.between(startTime, endTime);

        // 判断时间差是否超过7天
        if (daysBetween > 7) {
            return ApiResultVo.error(ApiResultVoEnum.ParamsError,"开始时间与结束时间不能超过7天");
        }
        var orderList = pullOrderList(accessToken,pageSize,startTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli()/1000,
                endTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli()/1000,"");
        if(orderList == null) {
            return ApiResultVo.error(ApiResultVoEnum.TokenFail);
        } else {
            return ApiResultVo.success(orderList.size(), orderList);
        }
    }

    protected static List<Order> pullOrderList(String accessToken, int pageSize, long startTime, long endTime, String nextKey) {
        String listResult = pullOrderListString(accessToken,pageSize,startTime, endTime,"");
        if(!StringUtils.isNotBlank(listResult)){
            return new ArrayList<>();
        }

        List<Order> lists = new ArrayList<>();
        JSONObject jsonObject = JSONObject.parseObject(listResult);
         if(jsonObject.getInteger("errcode") == 42001){
             return null;
         }
        if(jsonObject.getInteger("errcode") == 0) {
            JSONArray orderIds = jsonObject.getJSONArray("order_id_list");
            if (orderIds != null && orderIds.size() > 0) {
                orderIds.forEach(orderId -> {
                    String detailResult = pullOrderDetail(accessToken, orderId.toString());
                    if (StringUtils.isNotBlank(detailResult)) {
                        JSONObject detailJsonObject = JSONObject.parseObject(detailResult);
                        if (detailJsonObject.getInteger("errcode") == 0) {
                            Order order = JSONObject.parseObject(detailJsonObject.getString("order"), Order.class);
                            lists.add(order);
                        }
                    }
                });
            }
            // 判断是否还有下一页
            Boolean isHas_more = jsonObject.getBoolean("has_more");
            String next_key = jsonObject.getString("next_key");
            while (isHas_more) {
                String listResultPageString = pullOrderListString(accessToken, pageSize, startTime, endTime, next_key);
                if(!StringUtils.isNotBlank(listResultPageString)){
                    isHas_more = false;
                    continue;
                }
                JSONObject jsonObjectPage = JSONObject.parseObject(listResultPageString);
                if(jsonObject.getInteger("errcode") != 0) {
                    isHas_more = false;
                    continue;
                }

                isHas_more = jsonObjectPage.getBoolean("has_more");
                next_key = jsonObjectPage.getString("next_key");
                JSONArray orderIds2 = jsonObjectPage.getJSONArray("order_id_list");
                if (orderIds2 != null && orderIds2.size() > 0) {
                    orderIds2.forEach(orderId -> {
                        String detailResult = pullOrderDetail(accessToken, orderId.toString());
                        if (StringUtils.isNotBlank(detailResult)) {
                            JSONObject detailJsonObject = JSONObject.parseObject(detailResult);
                            if (detailJsonObject.getInteger("errcode") == 0) {
                                Order order = JSONObject.parseObject(detailJsonObject.getString("order"), Order.class);
                                lists.add(order);
                            }
                        }
                    });
                }
            }
        }
        return lists;
    }

    protected static String pullOrderListString(String accessToken, Integer pageSize,Long startTime,Long endTime,String nextKey) {
        Map<String,Object> updateTimeRange = new HashMap<>();
        updateTimeRange.put("start_time",startTime);
        updateTimeRange.put("end_time",endTime);

        Map<String,Object> params = new HashMap<>();
        params.put("update_time_range",updateTimeRange);
        params.put("page_size",pageSize);
        if(StringUtils.isNotBlank(nextKey)){
            params.put("next_key",nextKey);
        }

        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            String url = ServerUrl.serverApiUrl + ServerUrl.orderListApiUrl + "?access_token=" + accessToken;
//            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.orderListApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
//            return stringHttpResponse.body();
            return OkHttpClientHelper.post(url,objectMapper.writeValueAsString(params));
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
    protected static String pullOrderDetail(String accessToken, String orderId) {
        Map<String,Object> params = new HashMap<>();
        params.put("order_id",orderId);
        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            String url = ServerUrl.serverApiUrl + ServerUrl.orderDetailApiUrl + "?access_token=" + accessToken;
//            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.orderDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
//            return stringHttpResponse.body();
            return OkHttpClientHelper.post(url,objectMapper.writeValueAsString(params));
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static ApiResultVo<Order> pullOrderDetail(Long orderId, String accessToken ) {
        String serverUrl = "https://api.weixin.qq.com";
//        ApiResultVo<Token> token = TokenApiHelper.getToken(appId, appSecret);
//        if (token.getCode() != ApiResultVoEnum.SUCCESS.getIndex())
//            return ApiResultVo.error(ApiResultVoEnum.ApiException, "获取Token失败");
//        String accessToken = token.getData().getAccess_token();
        String result = pullOrderDetail(accessToken, orderId.toString());

        if (!StringUtils.isNotBlank(result)) {
            return ApiResultVo.error(ApiResultVoEnum.ApiException);
        }

        JSONObject detailJsonObject = JSONObject.parseObject(result);
        if (detailJsonObject.getInteger("errcode") == 0) {
            Order order = JSONObject.parseObject(detailJsonObject.getString("order"), Order.class);
            return ApiResultVo.success(order);
        }else {
            return ApiResultVo.error(ApiResultVoEnum.ApiException);
        }
    }

}


