package cn.qihangerp.open.dou;

import cn.qihangerp.common.common.ApiResultVo;
import cn.qihangerp.common.common.ApiResultVoEnum;
import cn.qihangerp.open.dou.model.after.AfterSale;
import cn.qihangerp.open.dou.utils.ExpressClient;
import cn.qihangerp.open.dou.utils.HttpUtil;
import cn.qihangerp.open.dou.utils.MD5Utils;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class DouRefundApiHelper {
    private static Logger log = LoggerFactory.getLogger(DouRefundApiHelper.class);

    /**
     * 更新退货订单
     * @param
     * @return
     */

    public static ApiResultVo<AfterSale> pullAfterSaleList(Long startTime, Long endTime, Integer pageIndex, Integer pageSize, String appKey, String appSecret, String accessToken){
        String method = "afterSale.List";
//        String method = "afterSale.orderList";
//        String refundMethod="refund.orderList";

        LinkedHashMap<String, Object> jsonMap =new LinkedHashMap<>();
        String[] orderBy = {"update_time desc"};
        jsonMap.put("order_by",orderBy);
        jsonMap.put("page",pageIndex);
        jsonMap.put("size",pageSize);
        jsonMap.put("update_end_time",endTime);//截至时间
        jsonMap.put("update_start_time",startTime);//开始时间

        JSONObject jsonObject = new JSONObject();
        jsonObject.putAll(jsonMap);

        String paramJson =jsonObject.toJSONString();

        long timestamp = System.currentTimeMillis() / 1000 ;

//        String signStr = "app_key"+appKey+"method"+method+"param_json"+paramJson+"timestamp"+timestamp+"v"+"1";
//        signStr = appSecret+signStr+appSecret;
//
//        String sign = MD5Utils.MD5Encode(signStr);
        String signStr = "app_key" + appKey + "method" + method + "param_json" + paramJson + "timestamp" + timestamp + "v" + "2";
        signStr = appSecret + signStr + appSecret;

        String sign = MD5Utils.MD5Encode(signStr);

//        String  sendUrl= "https://openapi.jinritemai.com";
        String sendUrl = "https://openapi-fxg.jinritemai.com/afterSale/List";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("method", method);
        params.put("param_json",paramJson);
        params.put("timestamp", timestamp+"");
        params.put("v", "2");
        params.put("sign", sign);

        try {
            String surl = sendUrl + "?" + HttpUtil.map2Url(params);
            HttpResponse<String> response = ExpressClient.doPost(surl, paramJson);
//            HttpResponse<String> response = ExpressClient.doPost(sendUrl+"/afterSale/orderList", HttpUtil.map2Url(params));
            if (response.statusCode() == 200) {
//                JSONObject obj = JSONObject.parseObject(response.body()).getJSONObject("data");
                JSONObject resultObj = JSONObject.parseObject(response.body());
                if (resultObj.getInteger("code") == 10000) {
                    Integer total = resultObj.getJSONObject("data").getInteger("total");

                    if (total == 0) return ApiResultVo.error(ApiResultVoEnum.ApiException.getIndex(), "无订单可以更新");

                    List<AfterSale> list = JSONArray.parseArray(resultObj.getJSONObject("data").getString("items"), AfterSale.class);
                    return ApiResultVo.success(total, list);
                } else {
                    return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "请求API错误：" + resultObj.getString("sub_msg"));
                }

            }else{
                return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "接口服务器连接异常");
            }

        } catch (Exception e) {
            return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "系统异常：" + e.getMessage());
        }
    }

//    //售后订单详情
//    public DcDouyinOrdersRefundDetail afterSaleOrderDetail(String refundOrderId){
//        Integer shopId=8;
//        var shop = shopService.getShop(shopId);
//        String appKey = shop.getAppkey();
//        String appSercet = shop.getAppSercet();
//        String method = "afterSale.orderDetail";
//        String paramJson ="{\"order_id\":\""+refundOrderId+"\"}";
//        String timestamp = DateUtil.dateToString(new Date(),"yyyy/MM/dd HH:mm:ss");
//
//        String signStr = "app_key"+appKey+"method"+method+"param_json"+paramJson+"timestamp"+timestamp+"v"+"1";
//        signStr = appSercet+signStr+appSercet;
//
//        String sign = MD5Utils.MD5Encode(signStr);
//
//        Map<String, String> params = new HashMap<>();
//        params.put("app_key", appKey);
//        params.put("method", method);
//        params.put("param_json",paramJson);
//        params.put("timestamp", timestamp);
//        params.put("v", "1");
//        params.put("sign", sign);
//        try {
//            String  sendUrl= "https://openapi.jinritemai.com";
//            HttpResponse<String> detailResponse = ExpressClient.doPost(sendUrl+"/afterSale/orderDetail", HttpUtil.map2Url(params));
//            JSONObject detailJson = JSONObject.parseObject(detailResponse.body());
//            //System.out.println(detailJson.toJSONString());
//            if(detailJson.getString("message").equals("success")){
//                JSONObject datailObj = detailJson.getJSONObject("data").getJSONObject("data");
//                return JsonUtil.strToObject(JSON.toJSONString(datailObj),DcDouyinOrdersRefundDetail.class);
//            }
//        }catch (Exception ex){
//            return null;
//        }
//        return null;
//    }

}
