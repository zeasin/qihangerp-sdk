package cn.qihangerp.open.jd.jdl;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.DateUtil;
import cn.qihangerp.open.common.SignUtil;
import com.alibaba.fastjson2.JSONObject;
import org.springframework.util.StringUtils;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

public class CloudPrintApiHelper {


    public static ApiResultVo<CloudPrintData> pullCloudPrintData(String appKey, String appSecret, String accessToken, List<PullCloudPrintRequestDto> request) {
        // 拉取接口
        String result = pullCloudPrintData(appKey, appSecret, accessToken, JSONObject.toJSONString(request));

        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");

        JSONObject jsonObject = JSONObject.parseObject(result);
        if (jsonObject.getJSONObject("error_response") != null)
            return ApiResultVo.error(ApiResultVoEnum.ApiException,jsonObject.getJSONObject("error_response").getString("zh_desc"));

        if (jsonObject.getInteger("code") != 1)
            return ApiResultVo.error(ApiResultVoEnum.ApiException, jsonObject.getString("statusMessage"));

        List<CloudPrintData> prePrintDatas = jsonObject.getList("prePrintDatas", CloudPrintData.class);

        return ApiResultVo.success(prePrintDatas.size(),prePrintDatas);
    }

    protected static String pullCloudPrintData(String appKey,String appSecret,String accessToken,String jsonParams) {
        String url = "https://api.jdl.com/PullDataService/pullData";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("method", "/PullDataService/pullData");

        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("v", "2.0");

//            String s ="[\n" +
//                    " {\n" +
//                    "  \"cpCode\": \"DSBK\",\n" +
//                    "  \"wayBillInfos\": [\n" +
//                    "   {\n" +
//                    "    \"popFlag\": 1,\n" +
//                    "    \"orderNo\": \"296716636166\",\n" +
//                    "    \"wayBillCode\": \"8516737273501\"\n" +
//                    "   }\n" +
//                    "  ],\n" +
//                    "  \"parameters\": {\n" +
//                    "   \"eCustomerCode\": \"10706\"\n" +
//                    "  },\n" +
//                    "  \"objectId\": \"12344345\"\n" +
//                    " }\n" +
//                    "]";

        params.put("param_json", jsonParams);


        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {

        }
        params.put("LOP-DN", "jdcloudprint");
//        params.put("360buy_param_json", URLEncoder.encode(param));
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> {
            if (!key.equals("param_json") && !key.equals("method")) {
                try {
                    joiner.add(key + "=" + URLEncoder.encode(value, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        });
        String urlP = joiner.toString();
        url = url + "?" + urlP;

//        url="https://api.jdl.com/PullDataService/pullData?access_token=8abd974c62c34778935b34b5952e6f68izdk&app_key=FB4CC3688E6F9065D4FF510A53BB60FF&LOP-DN=jdcloudprint&v=2.0&sign=962914373653C6F853BA46B45EE8CDA7&timestamp=2024-06-17+19%3A32%3A58";

        // 调用接口
        HttpClient client = HttpClient.newBuilder().build();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/json;charset=UTF-8")
                .header("X-UseJosAuth", "true")
                .POST(HttpRequest.BodyPublishers.ofString(jsonParams))
                .build();
        try {
            HttpResponse<String> send = client.send(request, HttpResponse.BodyHandlers.ofString());
            String result = send.body();
            return result;
        } catch (Exception e) {
            return "";
        }
    }
}
