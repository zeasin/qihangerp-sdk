package cn.qihangerp.open.pdd;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.HttpUtils;
import cn.qihangerp.open.pdd.model.WaybillAccount;
import cn.qihangerp.open.common.PDDSignGenerator;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.net.http.HttpResponse;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PddWaybillAccountApiHelper {
    private static Logger log = LoggerFactory.getLogger(PddWaybillAccountApiHelper.class);


    public static ApiResultVo<WaybillAccount> pullWaybillBranchAccountList(String clientId, String clientSecret, String accessToken) {
        log.info("=======开始拉取PDD电子面单账号信息{}=========", LocalDateTime.now());
        String resultString = pullWaybillAccountList(clientId, clientSecret, accessToken);
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("pdd_waybill_search_response");

//            JSONArray list =  dataResult.getJSONObject("subscribtions").getJSONArray("waybill_apply_subscription_info");
            List<WaybillAccount> list =  dataResult.getList("waybill_apply_subscription_cols",WaybillAccount.class);

            if (list != null) {
                return ApiResultVo.success(list.size(),list);
            } else {
                return ApiResultVo.success(0,new ArrayList<>());
            }

        } else {
            // 有错误
            JSONObject errorInfo = (JSONObject) result.get("error_response");
            if (errorInfo.get("code").toString().equals("27")) {
                // SessionKey非法
                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(), errorInfo.get("sub_msg").toString());
            } else if (errorInfo.get("code").toString().equals("25")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名错误，有可能是appSecret错了");
            } else if (errorInfo.get("code").toString().equals("29")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "错误的AppKey");
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("sub_msg").toString());
            }
        }
    }

    protected static String pullWaybillAccountList(String clientId, String clientSecret, String accessToken) {
        String url = "https://gw-api.pinduoduo.com/api/router"; // API的URL

        Map<String, String> params = new HashMap<>();
        params.put("type", "pdd.waybill.search");
        params.put("client_id", clientId);
        params.put("access_token",accessToken);
        params.put("timestamp", System.currentTimeMillis()/1000 +"");
        params.put("wp_code", "");


        try {
            String sign = PDDSignGenerator.generateSign(params, clientSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }

        // 调用接口
//        PddWaybillApiService remoting = RemoteUtil.Remoting(url, PddWaybillApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getWaybillAccount(jsonString);
//        return result;
        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
        return stringHttpResponse.body();
    }


}