package cn.qihangerp.open.tao;



import cn.qihangerp.open.common.*;
import cn.qihangerp.open.tao.model.WaybillBranchAccountList;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import java.util.*;

public class TaoWaybillAccountApiHelper {
    private static Logger log = LoggerFactory.getLogger(TaoWaybillAccountApiHelper.class);


    public static ApiResultVo<WaybillBranchAccountList> pullWaybillBranchAccountList(String appKey, String appSecret, String sessionKey) throws IOException {
        log.info("=======开始拉取TAO电子面单账号信息{}=========", LocalDateTime.now());
        String resultString = pullWaybillAccountList(appKey, appSecret, sessionKey);
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("wlb_waybill_i_search_response");

//            JSONArray list =  dataResult.getJSONObject("subscribtions").getJSONArray("waybill_apply_subscription_info");
            List<WaybillBranchAccountList> list =  dataResult.getJSONObject("subscribtions").getList("waybill_apply_subscription_info",WaybillBranchAccountList.class);

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

    protected static String pullWaybillAccountList(String appKey, String appSecret, String sessionKey) throws IOException {
        String url = "https://api.taobao.com/router/rest"; // 淘宝API的URL
        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", "taobao.wlb.waybill.i.search");
        params.put("v", "2.0");
        params.put("session", sessionKey);
        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("format", "json");
        params.put("sign_method", "md5");

        params.put("waybill_apply_request", "{}");

        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> joiner.add(key + "=" +  URLEncoder.encode(value)));
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
//        TaoWaybillApiService remoting = RemoteUtil.Remoting(url, TaoWaybillApiService.class);
//        String result = remoting.getWaybillList();
//
//        return result;
//        String resultString = HttpUtils.doGet(url);
        String resultString = OkHttpClientHelper.get(url);
        return resultString;
    }


}