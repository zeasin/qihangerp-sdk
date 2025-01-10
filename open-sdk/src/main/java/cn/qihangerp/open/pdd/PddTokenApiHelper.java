package cn.qihangerp.open.pdd;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.HttpUtils;
import cn.qihangerp.open.pdd.model.Token;
import cn.qihangerp.open.common.PDDSignGenerator;
import com.alibaba.fastjson2.JSONObject;
import org.springframework.util.StringUtils;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

public class PddTokenApiHelper {
    /**
     * 1) 按需组装授权页面
     * WEB端网页授权 https://fuwu.pinduoduo.com/service-market/auth
     * https://{授权页链接}?response_type=code&client_id={应用client_id}&redirect_uri={client_id对应的回调地址}&state={自定义参数}
     *
     * 2) 用户授权获得授权码（code）
     *
     * 3) 访问接口获取调用令牌（access_token）
     * pdd.pop.auth.token.create
     *
     */

    protected static  String getOAuthUrl(String clientId,String redirectUri,String state) {
        String url = "https://mms.pinduoduo.com/open.html?response_type=code&client_id=" + clientId + "&redirect_uri=" + redirectUri+"&state="+state;
        return  url;
    }

    public static ApiResultVo<Token> getToken(String clientId, String clientSecret, String code) {
        String result = getTokenResult(clientId, clientSecret, code);
        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");

        JSONObject jsonObject = JSONObject.parseObject(result);
        if(jsonObject.getJSONObject("pop_auth_token_create_response") == null) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口返回数据错误");

        Token response = JSONObject.parseObject(jsonObject.getString("pop_auth_token_create_response"), Token.class);
        return ApiResultVo.success(response);
    }
    protected static String getTokenResult(String clientId,String clientSecret,String code){
        String url = "http://gw-api.pinduoduo.com/api/router"; // API的URL
        Map<String, String> params = new HashMap<>();
        params.put("type", "pdd.pop.auth.token.create");
        params.put("client_id", clientId);
        params.put("timestamp", System.currentTimeMillis()/1000 +"");
        params.put("code", code);

        try {
            String sign = PDDSignGenerator.generateSign(params, clientSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }

        // 调用接口
//        PddTokenApiService remoting = RemoteUtil.Remoting(url, PddTokenApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getToken(jsonString);
//        return result;
        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
        return stringHttpResponse.body();
    }
}
