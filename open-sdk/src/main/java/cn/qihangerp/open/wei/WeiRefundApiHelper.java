package cn.qihangerp.open.wei;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.HttpUtils;
import cn.qihangerp.open.wei.model.AfterSaleOrder;
import cn.qihangerp.open.wei.vo.RefundDetailVo;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;

import java.net.http.HttpResponse;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class WeiRefundApiHelper {


    public  static ApiResultVo<AfterSaleOrder> pullRefundList(LocalDateTime startTime, LocalDateTime endTime, String accessToken) {
        // 确保 startTime 和 endTime 的顺序
        if (startTime.isAfter(endTime)) {
            return ApiResultVo.error(ApiResultVoEnum.ParamsError,"结束时间必须大于开始时间");
        }
        // 计算两个时间点之间的小时数差
        long hoursBetween = ChronoUnit.HOURS.between(startTime, endTime);

        // 判断时间差是否超过24小时
        if (hoursBetween > 24) {
            return ApiResultVo.error(ApiResultVoEnum.ParamsError,"开始时间与结束时间不能超过24小时");
        }
        List<AfterSaleOrder> lists = new ArrayList<>();

        String listResult = pullRefundList(accessToken,startTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli()/1000,endTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli()/1000,"");

        if(!StringUtils.isNotBlank(listResult)){
            return ApiResultVo.error(ApiResultVoEnum.ApiException);
        }
        JSONObject jsonObject = JSONObject.parseObject(listResult);
        if(jsonObject.getInteger("errcode") == 0) {
            JSONArray orderIds = jsonObject.getJSONArray("after_sale_order_id_list");
            if (orderIds != null && orderIds.size() > 0) {
                orderIds.forEach(orderId -> {
                    String detailResult = pullRefundDetail(accessToken, orderId.toString());
                    if (StringUtils.isNotBlank(detailResult)) {
                        JSONObject detailJsonObject = JSONObject.parseObject(detailResult);
                        if (detailJsonObject.getInteger("errcode") == 0) {
                            AfterSaleOrder order = JSONObject.parseObject(detailJsonObject.getString("after_sale_order"), AfterSaleOrder.class);
                            lists.add(order);
                        }
                    }
                });
                // 判断是否还有下一页
                Boolean isHas_more = jsonObject.getBoolean("has_more");
                String next_key = jsonObject.getString("next_key");
                while (isHas_more) {
                    String listResultPage = pullRefundList(accessToken, startTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli() / 1000,
                            endTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli() / 1000, next_key);

                }
            }
            return ApiResultVo.success(lists.size(), lists);
        }else if(jsonObject.getInteger("errcode") == 42001){
            return ApiResultVo.error(ApiResultVoEnum.TokenFail,jsonObject.getString("errmsg"));
        } else {
            return ApiResultVo.error(ApiResultVoEnum.ApiException,jsonObject.getString("errmsg"));
        }

    }
    public  static ApiResultVo<AfterSaleOrder> pullRefundDetail(Long refundId, String accessToken) {
       String result = pullRefundDetail(accessToken,refundId.toString());
        if(!StringUtils.isNotBlank(result)){
            return ApiResultVo.error(ApiResultVoEnum.ApiException);
        }

        RefundDetailVo refundDetailVo = JSONObject.parseObject(result,RefundDetailVo.class);

        if(refundDetailVo.getErrcode() == 0) {
            // 拉取到了数据 拉取详情
            return ApiResultVo.success(refundDetailVo.getAfter_sale_order());
        }else {
            return ApiResultVo.error(ApiResultVoEnum.ApiException,refundDetailVo.getErrmsg());
        }

    }

    protected static String pullRefundList(String accessToken ,Long startTime,Long endTime,String nextKey) {
        Map<String,Object> params = new HashMap<>();
        params.put("begin_create_time",startTime);
        params.put("end_create_time",endTime);

        if(StringUtils.isNotBlank(nextKey)){
            params.put("next_key",nextKey);
        }

        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.refundListApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
            return stringHttpResponse.body();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
    protected static String pullRefundDetail(String accessToken, String afterSaleOrderId) {
        Map<String,Object> params = new HashMap<>();
        params.put("after_sale_order_id",afterSaleOrderId);
        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.refundDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
            return stringHttpResponse.body();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
