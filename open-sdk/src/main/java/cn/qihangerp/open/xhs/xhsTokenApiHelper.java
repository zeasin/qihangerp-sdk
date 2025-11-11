package cn.qihangerp.open.xhs;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.MD5Utils;
import cn.qihangerp.open.common.OkHttpClientHelper;
import com.alibaba.fastjson2.JSONObject;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class xhsTokenApiHelper {


    public static ApiResultVo<TokenVo> getToken(String clientId, String clientSecret, String code) throws IOException {
        String result = getTokenResult(clientId, clientSecret, code);
        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");

        JSONObject jsonObject = JSONObject.parseObject(result);
        if(jsonObject.getIntValue("error_code") != 0){
            return ApiResultVo.error(jsonObject.getString("error_msg"));
        }

        TokenVo response = JSONObject.parseObject(jsonObject.getString("data"), TokenVo.class);
        return ApiResultVo.success(response);
    }
    protected static String getTokenResult(String appId,String appSecret,String code) throws IOException {
        String url = "https://ark.xiaohongshu.com/ark/open_api/v3/common_controller"; // API的URL
        String method = "oauth.getAccessToken";
        Long time = System.currentTimeMillis()/ 1000;
        Map<String, String> params = new HashMap<>();
        params.put("appId", appId);
        params.put("version","2.0");
        params.put("timestamp", time.toString());
        params.put("method", method);

        String signString = method+"?appId="+appId+"&timestamp="+time.toString()+"&version="+"2.0"+appSecret;
        String sign = MD5Utils.MD5Encode(signString);
        params.put("sign", sign);
        params.put("code", code);


        String jsonString = JSONObject.toJSONString(params);
        String result =  OkHttpClientHelper.post(url, jsonString);
        return result;
    }

}
