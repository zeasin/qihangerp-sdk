package cn.qihangerp.open.pdd;



import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.RemoteUtil;
import cn.qihangerp.open.pdd.model.Order;
import cn.qihangerp.open.pdd.model.OrderListResultVo;
import cn.qihangerp.open.pdd.service.PddOrderApiService;
import cn.qihangerp.open.common.PDDSignGenerator;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PddOrderApiHelper {
    private static Logger log = LoggerFactory.getLogger(PddOrderApiHelper.class);

    /**
     * 拉取商品列表
     * @param clientId
     * @param clientSecret
     * @param accessToken
     * @param pageIndex
     * @param pageSize
     * @return
     */

    public static ApiResultVo<OrderListResultVo> pullOrderList(String clientId, String clientSecret, String accessToken, Integer startTime, Integer endTime, Integer pageIndex, Integer pageSize) {

        String result = pullOrderListResult(clientId, clientSecret, accessToken,startTime,endTime,pageIndex,pageSize);
        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");

        JSONObject jsonObject = JSONObject.parseObject(result);
        if(jsonObject.getString("error_response") !=null)
            return ApiResultVo.error(ApiResultVoEnum.ApiException, jsonObject.getJSONObject("error_response").getString("error_msg"));

        if(jsonObject.getJSONObject("order_list_get_response") == null) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口返回数据错误");

        Boolean hasNext = jsonObject.getJSONObject("order_list_get_response").getBoolean("has_next");
//        JSONArray a = jsonObject.getJSONObject("order_list_get_response").getJSONArray("order_list");

        List<Order> orderList = JSONArray.parseArray(jsonObject.getJSONObject("order_list_get_response").getString("order_list"), Order.class);
//        while (hasNext){
//            pageIndex++;
//            try {
//                String result1 = pullOrderListResult(clientId, clientSecret, accessToken, startTime, endTime, pageIndex, pageSize);
//                JSONObject jsonObject1 = JSONObject.parseObject(result1);
//                hasNext = jsonObject1.getJSONObject("order_list_get_response").getBoolean("has_next");
//                orderList.addAll(JSONArray.parseArray(jsonObject1.getJSONObject("order_list_get_response").getString("order_list"), Order.class));
//            }catch (Exception e){
//                e.printStackTrace();
//                hasNext = false;
//            }
//        }
        return ApiResultVo.success(new OrderListResultVo(hasNext,orderList));
    }



    protected static String pullOrderListResult(String clientId, String clientSecret, String accessToken,Integer startTime, Integer endTime,Integer pageIndex,Integer pageSize) {
        String url = "https://gw-api.pinduoduo.com/api/router"; // API的URL

        Map<String, String> params = new HashMap<>();
        params.put("type", "pdd.order.list.get");
        params.put("client_id", clientId);
        params.put("access_token",accessToken);
        params.put("timestamp", System.currentTimeMillis()/1000 +"");

        // 主体字段
        params.put("page", pageIndex+"");
        params.put("page_size", pageSize+"");
        params.put("order_status","5");//发货状态，1：待发货，2：已发货待签收，3：已签收 5：全部
        params.put("refund_status","5");//售后状态 1：无售后或售后关闭，2：售后处理中，3：退款中，4： 退款成功 5：全部
        params.put("use_has_next","true");
        params.put("start_confirm_at",startTime+"");
        params.put("end_confirm_at",endTime+"");

        try {
            String sign = PDDSignGenerator.generateSign(params, clientSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }

        // 调用接口
        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
        String result = remoting.getOrderList(jsonString);
        return result;
    }

    protected static String pullOrderDetail(String clientId, String clientSecret, String accessToken,String orderSn) {
        String url = "https://gw-api.pinduoduo.com/api/router"; // API的URL

        Map<String, String> params = new HashMap<>();
        params.put("type", "pdd.order.information.get");
        params.put("client_id", clientId);
        params.put("access_token",accessToken);
        params.put("timestamp", System.currentTimeMillis()/1000 +"");

        // 主体字段
        params.put("order_sn", orderSn);

        try {
            String sign = PDDSignGenerator.generateSign(params, clientSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }

        // 调用接口
        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
        String result = remoting.getOrderList(jsonString);
        return result;
    }
}