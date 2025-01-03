package cn.qihangerp.open.jd;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.jd.model.WaybillAccount;
import cn.qihangerp.open.common.DateUtil;
import cn.qihangerp.open.common.SignUtil;
import com.alibaba.fastjson2.JSONObject;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpResponse;
import java.util.*;

public class JdWaybillAccountApiHelper {
    private static Logger log = LoggerFactory.getLogger(JdWaybillAccountApiHelper.class);


    public static ApiResultVo<WaybillAccount> getWaybillAccount(String appKey, String appSecret, String accessToken, String vendorCode) {
        // 拉取接口
        String result = pullWaybillAccount(appKey, appSecret, accessToken, vendorCode);

        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");


        JSONObject jsonObject = JSONObject.parseObject(result);

        if (jsonObject.getJSONObject("error_response") != null)
            return ApiResultVo.error(ApiResultVoEnum.ApiException,jsonObject.getJSONObject("error_response").getString("zh_desc"));

        if (jsonObject.getJSONObject("jingdong_ldop_alpha_provider_sign_success_responce").getInteger("code") != 0)
            return ApiResultVo.error(ApiResultVoEnum.ApiException, jsonObject.getString("statusMessage"));

        List<WaybillAccount> list = jsonObject.getJSONObject("jingdong_ldop_alpha_provider_sign_success_responce").getJSONObject("resultInfo").getList("data", WaybillAccount.class);


        return ApiResultVo.success(list.size(),list);
    }

    protected static String pullWaybillAccount (String appKey,String appSecret,String accessToken,String vendorCode){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.ldop.alpha.provider.sign.success");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
        try {

            Map<String, Object> pmap = new TreeMap();
            pmap.put("vendorCode", vendorCode);



            ObjectMapper mapper = new ObjectMapper();
            mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_NULL);
            mapper.disable(new DeserializationConfig.Feature[]{DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES});
            mapper.configure(org.codehaus.jackson.map.SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS, false);
            String p = mapper.writeValueAsString(pmap);
//        String param = JSONObject.toJSONString(pmap);
            params.put("360buy_param_json", p);
        }catch (Exception e){
            return "";
        }

        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {

        }
//        params.put("360buy_param_json", URLEncoder.encode(param));
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> {
            try {
                joiner.add(key + "=" + URLEncoder.encode(value,"UTF-8"));
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        });
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
        HttpClient client = HttpClient.newBuilder().build();
        java.net.http.HttpRequest request = java.net.http.HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/x-www-form-urlencoded")
                .GET()
                .build();
        try {
            HttpResponse<String> send = client.send(request, HttpResponse.BodyHandlers.ofString());
            String result = send.body();
            return result;
        }catch (Exception e){
            return "";
        }
    }


   }
