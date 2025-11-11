package cn.qihangerp.open.xhs;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.MD5Utils;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.xhs.model.SenderAddress;
import cn.qihangerp.open.xhs.model.TradeOrderInfo;
import cn.qihangerp.open.xhs.response.SubscribeResponse;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
public class xhsWaybillCodeApiHelper {

    public static ApiResultVo<SubscribeResponse> getWaybillCode(String appId, String appSecret, String accessToken,String cpCode, String branchCode, SenderAddress senderAddress, List<TradeOrderInfo> tradeOrderInfoList) throws IOException {
        String listResult = getWaybillCodeStr(appId, appSecret, accessToken, cpCode, branchCode, senderAddress, tradeOrderInfoList);
        if (StringUtils.hasText(listResult)) {
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if (jsonObject.getBoolean("success")) {
                log.info("==========获取小红书电子面单成功=============");
                JSONObject data = jsonObject.getJSONObject("data");

                List<SubscribeResponse> list = data.getList("subscribeList", SubscribeResponse.class);
                return ApiResultVo.success(list.size(), list);

            } else {
                return ApiResultVo.error(jsonObject.getString("error_msg"));
            }
        } else {
            return ApiResultVo.error("接口请求失败");
        }

    }

    protected static String getWaybillCodeStr(String appId, String appSecret, String accessToken, String cpCode, String branchCode, SenderAddress senderAddress, List<TradeOrderInfo> tradeOrderInfoList) throws IOException {
        String serverUrl = "https://ark.xiaohongshu.com/ark/open_api/v3/common_controller";
        String method = "express.createEbillOrders";
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
        params.put("cpCode",cpCode);
//        Map<String,Object> sender = new HashMap<>();
//        sender.put("name", senderAddress.getName());
//        sender.put("mobile", senderAddress.getMobile());
//        sender.put("phone", senderAddress.getPhone());
//        sender.put("address", senderAddress.getAddress());
        params.put("sender",senderAddress);
        params.put("customerCode","");
        params.put("sellerName","");
        params.put("branchCode",branchCode);
        params.put("billVersion",2);

        // 订单信息
        params.put("tradeOrderInfoList",tradeOrderInfoList);
        log.info("===========请求xhs取号接口{}",JSONObject.toJSONString(params));
        // 调用接口
//        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getOrderList(jsonString);
//        return result;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
        String result =  OkHttpClientHelper.post(serverUrl, jsonString);
        log.info("========请求小红书结果：{}",result);
        return result;
    }


}
