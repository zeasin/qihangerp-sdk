package cn.qihangerp.open.pdd;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.pdd.model.WaybillCodeModule;
import cn.qihangerp.open.pdd.request.WaybillCloudPrintApplyNewRequest;
import cn.qihangerp.open.common.PDDSignGenerator;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.java.Log;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Log
public class PddWaybillApiHelper {

    public static ApiResultVo<WaybillCodeModule> getWaybillCode(String clientId, String clientSecret, String accessToken, WaybillCloudPrintApplyNewRequest request) throws IOException {
        log.info("=======开始PDD电子面单取号{}=========");
        String resultString = getWaybillCode(clientId, clientSecret, accessToken,JSONObject.toJSONString(request));
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("pdd_waybill_get_response");

//            JSONArray list =  dataResult.getJSONObject("subscribtions").getJSONArray("waybill_apply_subscription_info");
            List<WaybillCodeModule> list =  dataResult.getList("modules", WaybillCodeModule.class);

            if (list != null) {
                return ApiResultVo.success(list.size(),list);
            } else {
                return ApiResultVo.success(0,new ArrayList<>());
            }

        } else {
            // 有错误

            JSONObject errorInfo = (JSONObject) result.get("error_response");
//            if (errorInfo.get("code").toString().equals("27")) {
//                // SessionKey非法
//                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(), errorInfo.get("sub_msg").toString());
//            } else if (errorInfo.get("code").toString().equals("25")) {
//                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名错误，有可能是appSecret错了");
//            } else if (errorInfo.get("code").toString().equals("29")) {
//                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "错误的AppKey");
//            } else {
//                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("sub_msg").toString());
//            }
            return ApiResultVo.error(errorInfo.getInteger("error_code"), errorInfo.get("error_msg").toString());
        }
    }

    protected static String getWaybillCode(String clientId, String clientSecret, String accessToken,String jsonParams) throws IOException {
        String url = "https://gw-api.pinduoduo.com/api/router"; // API的URL

        Map<String, String> params = new HashMap<>();
        params.put("type", "pdd.waybill.get");
        params.put("client_id", clientId);
        params.put("access_token",accessToken);
        params.put("timestamp", System.currentTimeMillis()/1000 +"");
        params.put("param_waybill_cloud_print_apply_new_request", jsonParams);


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
//        System.out.println(result);
//        return result;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
        return OkHttpClientHelper.post(url,jsonString);
    }
}
