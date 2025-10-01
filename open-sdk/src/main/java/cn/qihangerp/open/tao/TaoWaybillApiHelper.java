package cn.qihangerp.open.tao;

import cn.qihangerp.open.common.*;
import cn.qihangerp.open.tao.model.WaybillCloudPrint;
import cn.qihangerp.open.tao.request.WaybillCloudPrintApplyNewRequest;

import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class TaoWaybillApiHelper {
    private static Logger log = LoggerFactory.getLogger(TaoWaybillApiHelper.class);


    public static ApiResultVo<WaybillCloudPrint> waybillCloudPrintApplyNew(String appKey, String appSecret, String sessionKey, WaybillCloudPrintApplyNewRequest request) throws IOException {
        log.info("=======开始TAO电子面单取号{}=========", LocalDateTime.now());
        String resultString = waybillCloudPrintApplyNewRequest(appKey, appSecret, sessionKey,JSONObject.toJSONString(request));
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("cainiao_waybill_ii_get_response");

//            JSONArray list =  dataResult.getJSONObject("subscribtions").getJSONArray("waybill_apply_subscription_info");
            List<WaybillCloudPrint> list =  dataResult.getJSONObject("modules").getList("waybill_cloud_print_response", WaybillCloudPrint.class);

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
                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("msg").toString());
            }
        }
    }

    protected static String waybillCloudPrintApplyNewRequest(String appKey, String appSecret, String sessionKey,String jsonParam) throws IOException {
        String url = "https://gw.api.taobao.com/router/rest";// 淘宝API的URL

        // 获取当前时间的ISO 8601格式
        String timestamp = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
                .withZone(ZoneOffset.ofHours(8))
                .format(Instant.now());


        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", "cainiao.waybill.ii.get");
        params.put("v", "2.0");
        params.put("session", sessionKey);
        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("timestamp", timestamp);
        params.put("format", "json");
        params.put("sign_method", "md5");
        params.put("param_waybill_cloud_print_apply_new_request", jsonParam);
        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }
        // 组合url参数
        String[] keys = params.keySet().toArray(new String[0]);
        Arrays.sort(keys);
        StringJoiner joiner = new StringJoiner("&");
        for (String key : keys) {
            joiner.add(key + "=" + URLEncoder.encode(params.get(key), Charset.defaultCharset()));
        }
//        params.forEach((key, value) -> joiner.add(key + "=" + URLEncoder.encode(value, Charset.defaultCharset())));
        String urlP = joiner.toString();
        url = url + "?" + urlP;
//        String result = HttpUtils.doGet(url);
        String result = OkHttpClientHelper.get(url);
//        String result = HttpUtils.doGet(url);


        // 调用接口
//        EWaybillApiService remoting = RemoteUtil.Remoting(url, EWaybillApiService.class);
//        String result = remoting.waybillCloudPrintApplyNewRequest();
        return result;
    }


}