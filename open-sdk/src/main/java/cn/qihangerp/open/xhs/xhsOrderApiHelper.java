package cn.qihangerp.open.xhs;

import cn.qihangerp.open.common.MD5Utils;
import cn.qihangerp.open.common.OkHttpClientHelper;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
public class xhsOrderApiHelper {

    public static String pullOrderList(String appId, String appSecret, String accessToken, LocalDateTime startTime, LocalDateTime  endTime, Integer pageNo, Integer pageSize) throws IOException {
        String serverUrl = "https://ark.xiaohongshu.com/ark/open_api/v3/common_controller";
        String method = "order.getOrderList";
        Long time = System.currentTimeMillis()/ 1000;
        Map<String, Object> params = new HashMap<>();
        params.put("appId", appId);
        params.put("version","2.0");
        params.put("timestamp", time.toString());
        params.put("accessToken", accessToken);
        params.put("method", method);

        String signString = method+"?appId="+appId+"&timestamp="+time+"&version="+"2.0"+appSecret;
        String sign = MD5Utils.MD5Encode(signString);
        params.put("sign", sign);

        // 主体字段
        params.put("startTime", startTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli()/1000);
        params.put("endTime", endTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli()/1000);
        params.put("timeType", 1);
        params.put("pageNo", pageNo+"");
        params.put("pageSize", pageSize+"");


        // 调用接口
//        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getOrderList(jsonString);
//        return result;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
        String result =  OkHttpClientHelper.post(serverUrl, jsonString);
//        log.info("========请求小红书结果：{}",result);
        return result;
    }

    public static String getOrderDetail(String appId,String appSecret,String accessToken,String orderId) throws IOException {
        String serverUrl = "https://ark.xiaohongshu.com/ark/open_api/v3/common_controller";
        String method = "order.getOrderDetail";
        Long time = System.currentTimeMillis()/ 1000;
        Map<String, String> params = new HashMap<>();
        params.put("appId", appId);
        params.put("version","2.0");
        params.put("timestamp", time.toString());
        params.put("accessToken", accessToken);
        params.put("method", method);

        String signString = method+"?appId="+appId+"&timestamp="+time+"&version="+"2.0"+appSecret;
        String sign = MD5Utils.MD5Encode(signString);
        params.put("sign", sign);

        // 主体字段
        params.put("orderId", orderId);


        // 调用接口
//        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getOrderList(jsonString);
//        return result;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
        String result =  OkHttpClientHelper.post(serverUrl, jsonString);
//        log.info("========请求小红书结果：{}",result);
        return result;
    }

    public static String getOrderReceiverInfo(String appId,String appSecret,String accessToken, String orderId,String openAddressId) throws IOException {
        String serverUrl = "https://ark.xiaohongshu.com/ark/open_api/v3/common_controller";
        String method = "order.getOrderReceiverInfo";
        Long time = System.currentTimeMillis()/ 1000;
        Map<String, Object> params = new HashMap<>();
        params.put("appId", appId);
        params.put("version","2.0");
        params.put("timestamp", time.toString());
        params.put("accessToken", accessToken);
        params.put("method", method);

        String signString = method+"?appId="+appId+"&timestamp="+time.toString()+"&version="+"2.0"+appSecret;
        String sign = MD5Utils.MD5Encode(signString);
        params.put("sign", sign);

        Map<String,String> orderParams = new HashMap<>();
        orderParams.put("openAddressId", openAddressId);
        orderParams.put("orderId", orderId);
        List<Map<String,String>> orderParamsList = new ArrayList<>();
        orderParamsList.add(orderParams);
        // 主体字段
        params.put("receiverQueries", orderParamsList);
        params.put("isReturn", false);


        // 调用接口
//        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getOrderList(jsonString);
//        return result;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
        String result =  OkHttpClientHelper.post(serverUrl, jsonString);
//        log.info("========请求小红书结果：{}",result);
        return result;
    }

}
