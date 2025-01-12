package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.HttpUtils;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import cn.qihangerp.open.wei.vo.ewaybill.AccountGetVo;
import cn.qihangerp.open.wei.vo.ewaybill.AccountVo;
import cn.qihangerp.open.wei.vo.ewaybill.DeliveryGetVo;
import cn.qihangerp.open.wei.vo.ewaybill.DeliveryVo;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

public class WeiWaybillAccountApiHelper {

    public static ApiResultVo<DeliveryVo> getDeliveryList(String appId, String appSecret, String accessToken)  {
        String serverUrl = "https://api.weixin.qq.com";
        ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(appId, appSecret);
        if(token.getCode() != ApiResultVoEnum.SUCCESS.getIndex()) return ApiResultVo.error(ApiResultVoEnum.ApiException,"获取Token失败");
        accessToken = token.getData().getAccess_token();

        Map<String,Object> params = new HashMap<>();
        params.put("status",3);


//        WeiWaybillApiService remoting = RemoteUtil.Remoting(serverUrl, WeiWaybillApiService.class);
//
//        DeliveryGetApiBo apiBo = new DeliveryGetApiBo();
//
//        apiBo.setStatus(3);
//        var res = remoting.getDeliveryList(accessToken, apiBo);
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
            DeliveryGetVo res = JSONObject.parseObject(stringHttpResponse.body(), DeliveryGetVo.class);

            if (res.getErrcode() == 0) {
                // 数据
                return ApiResultVo.success(res.getList().size(), res.getList());
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ApiException, res.getErrmsg());
            }
        }catch (Exception e){
            return ApiResultVo.error(ApiResultVoEnum.ApiException, e.getMessage());
        }

    }
    public static ApiResultVo<AccountVo> getAccountList(String appId, String appSecret, String accessToken) {
        String serverUrl = "https://api.weixin.qq.com";
        if (!StringUtils.isNotBlank(accessToken)) {
            ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(appId, appSecret);
            if (token.getCode() != ApiResultVoEnum.SUCCESS.getIndex())
                return ApiResultVo.error(ApiResultVoEnum.ApiException, "获取Token失败");
            accessToken = token.getData().getAccess_token();
        }
        Map<String, Object> params = new HashMap<>();
        params.put("limit", 10);
        params.put("need_balance", true);

//        WeiWaybillApiService remoting = RemoteUtil.Remoting(serverUrl, WeiWaybillApiService.class);
//
//        AccountGetApiBo apiBo = new AccountGetApiBo();
//
//        apiBo.setNeed_balance(true);
//        apiBo.setLimit(10);
//        var res = remoting.getEwaybillAccount(accessToken, apiBo);
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));

            AccountGetVo res = JSONObject.parseObject(stringHttpResponse.body(), AccountGetVo.class);
            if (res.getErrcode() == 0) {
                // 数据
                return ApiResultVo.success(res.getAccount_list().size(), res.getAccount_list());
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ApiException, res.getErrmsg());
            }
        } catch (Exception e) {
            return ApiResultVo.error(ApiResultVoEnum.ApiException, e.getMessage());
        }
    }
}
