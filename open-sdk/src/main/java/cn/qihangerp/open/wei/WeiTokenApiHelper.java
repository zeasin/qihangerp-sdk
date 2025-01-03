package cn.qihangerp.open.wei;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.RemoteUtil;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import cn.qihangerp.open.wei.service.WeiShopInfoApiService;
import cn.qihangerp.open.wei.service.WeiTokenApiService;
import cn.qihangerp.open.wei.vo.ShopApiResultVo;

public class WeiTokenApiHelper {
    /**
     * 获取新token
     * @param appId
     * @param secret
     * @return
     */
    public static ApiResultVo<WeiTokenResponse> getToken(String appId, String secret){

        WeiTokenApiService remoting1 = RemoteUtil.Remoting(ServerUrl.serverApiUrl, WeiTokenApiService.class);


        WeiTokenResponse weiTokenResponse = remoting1.getToken("client_credential",appId,secret);
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
        String serverUrl = "https://api.weixin.qq.com";
        // 调用 店铺基本信息接口 验证Token
        WeiShopInfoApiService remoting = RemoteUtil.Remoting(serverUrl, WeiShopInfoApiService.class);
        ShopApiResultVo shopInfo = remoting.getShopInfo(accessToken);
        if(shopInfo.getErrcode()==null||shopInfo.getErrcode()==0) {
            WeiTokenResponse weiTokenResponse = new WeiTokenResponse();
            weiTokenResponse.setAccess_token(accessToken);
            weiTokenResponse.setErrcode(0);
            return ApiResultVo.success(weiTokenResponse);
        }
        else {
            // Token过期 (shopInfo.getErrcode() == 42001)
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

