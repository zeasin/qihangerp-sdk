package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import cn.qihangerp.open.wei.vo.ShopApiResultVo;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

public class WeiTokenApiHelper {
    /**
     * 获取新token
     * @param appId
     * @param secret
     * @return
     */
    public static ApiResultVo<WeiTokenResponse> getToken(String appId, String secret){
        //https://developers.weixin.qq.com/doc/store/API/basics/getaccesstoken.html
        String result = "";
        try {
            String url = ServerUrl.serverApiUrl+ServerUrl.tokenApiUrl+"?grant_type=client_credential&appid="+appId+"&secret="+secret;
//            result = HttpUtils.doGet(url);
            result = OkHttpClientHelper.get(url);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(StringUtils.isBlank(result)){
            return ApiResultVo.error(ApiResultVoEnum.ApiException.getIndex(),"接口读取异常");
        }

//        WeiTokenApiService remoting1 = RemoteUtil.Remoting(ServerUrl.serverApiUrl, WeiTokenApiService.class);
//        WeiTokenResponse weiTokenResponse = remoting1.getToken("client_credential",appId,secret);

        WeiTokenResponse weiTokenResponse = JSONObject.parseObject(result, WeiTokenResponse.class);
        if(weiTokenResponse.getErrcode()==null|| weiTokenResponse.getErrcode()==0) {
            return ApiResultVo.success(weiTokenResponse);
        }else{
            return ApiResultVo.error(ApiResultVoEnum.ApiException, weiTokenResponse.getErrmsg());
        }
    }

    /**
     * 检查token是否过期并返回新token
     * @param appid
     * @param secret
     * @param accessToken
     * @return
     */
    public static ApiResultVo<WeiTokenResponse> checkToken(String appid, String secret, String accessToken){
        //https://api.weixin.qq.com/channels/ec/basics/info/get?access_token=ACCESS_TOKEN
        String url = ServerUrl.serverApiUrl+ServerUrl.shopBaseInfoApiUrl+"?access_token="+accessToken;
        String result = "";
        try {
//            result = HttpUtils.doGet(url);
            result = OkHttpClientHelper.get(url);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(StringUtils.isBlank(result)){
            return ApiResultVo.error(ApiResultVoEnum.ApiException.getIndex(),"接口读取异常");
        }

        // 调用 店铺基本信息接口 验证Token
//        WeiShopInfoApiService remoting = RemoteUtil.Remoting(serverUrl, WeiShopInfoApiService.class);
//        ShopApiResultVo shopInfo = remoting.getShopInfo(accessToken);
        ShopApiResultVo shopInfo = JSONObject.parseObject(result, ShopApiResultVo.class);
        if(shopInfo.getErrcode()==null||shopInfo.getErrcode()==0) {
            WeiTokenResponse weiTokenResponse = new WeiTokenResponse();
            weiTokenResponse.setAccess_token(accessToken);
            weiTokenResponse.setErrcode(0);
            return ApiResultVo.success(weiTokenResponse);
        }else if(shopInfo.getErrcode() == 42001 || shopInfo.getErrcode() == 40001) {
                // Token过期 (shopInfo.getErrcode() == 42001 40001)
                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(),"Token失效");
            }
        else {
//            TokenApiService remoting1 = RemoteUtil.Remoting(serverUrl, TokenApiService.class);
//            Token token = remoting1.getToken("client_credential", appid, secret);
//            if (token.getErrcode() == null || token.getErrcode() == 0) {
//                return ApiResultVo.success(token);
//            } else {
//                return ApiResultVo.error(token.getErrcode(), token.getErrmsg());
//            }
            return ApiResultVo.error(shopInfo.getErrcode(), shopInfo.getErrmsg());
        }
    }
}

