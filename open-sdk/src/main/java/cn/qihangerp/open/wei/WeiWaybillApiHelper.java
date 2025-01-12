package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.wei.bo.ewaybill.WaybillRequest;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import cn.qihangerp.open.wei.vo.ewaybill.EwaybillOrderCreateVo;
import cn.qihangerp.open.wei.vo.ewaybill.EwaybillOrderPreCreateVo;
import org.apache.commons.lang3.StringUtils;

public class WeiWaybillApiHelper {

    public static ApiResultVo<EwaybillOrderCreateVo> getWaybillCode(String appId, String appSecret, String accessToken, WaybillRequest request){
        if(!StringUtils.isNotBlank(accessToken)) {
            ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(appId, appSecret);
            if (token.getCode() != ApiResultVoEnum.SUCCESS.getIndex())
                return ApiResultVo.error(ApiResultVoEnum.ApiException, "获取Token失败");
            accessToken = token.getData().getAccess_token();
        }
        ApiResultVo<String> preCreateResult = ewaybillOrderPreCreate(appId, appSecret, accessToken, request);
        if (preCreateResult.getCode() != ApiResultVoEnum.SUCCESS.getIndex()){
            return ApiResultVo.error(preCreateResult.getCode(),preCreateResult.getMsg());
        }
        request.setEwaybill_order_id(preCreateResult.getData());
        request.setTemplate_id("single");
        return ewaybillOrderCreate(appId, appSecret, accessToken, request);
    }


    public static ApiResultVo<String> ewaybillOrderPreCreate(String appId, String appSecret, String accessToken,WaybillRequest request)  {
        String serverUrl = "https://api.weixin.qq.com";
        if(!StringUtils.isNotBlank(accessToken)) {
            ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(appId, appSecret);
            if (token.getCode() != ApiResultVoEnum.SUCCESS.getIndex())
                return ApiResultVo.error(ApiResultVoEnum.ApiException, "获取Token失败");
            accessToken = token.getData().getAccess_token();
        }

//        WeiWaybillApiService remoting = RemoteUtil.Remoting(serverUrl, WeiWaybillApiService.class);
//
//        var res = remoting.ewaybillOrderPreCreate(accessToken, request);
        EwaybillOrderPreCreateVo res = new EwaybillOrderPreCreateVo();

        if(res.getErrcode() == 0){
            // 数据
            return ApiResultVo.success(res.getEwaybill_order_id());
        }else {
            return ApiResultVo.error(ApiResultVoEnum.ApiException,res.getErrmsg());
        }
        //ewaybill_order_id -> 3486612324495114245
        //ewaybill_order_id -> 3486613093898141699
    }


    public static ApiResultVo<EwaybillOrderCreateVo> ewaybillOrderCreate(String appId, String appSecret, String accessToken,WaybillRequest request)  {
        String serverUrl = "https://api.weixin.qq.com";
        if(!StringUtils.isNotBlank(accessToken)) {
            ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(appId, appSecret);
            if (token.getCode() != ApiResultVoEnum.SUCCESS.getIndex())
                return ApiResultVo.error(ApiResultVoEnum.ApiException, "获取Token失败");
            accessToken = token.getData().getAccess_token();
        }

//        WeiWaybillApiService remoting = RemoteUtil.Remoting(serverUrl, WeiWaybillApiService.class);
//
//        var res = remoting.ewaybillOrderCreate(accessToken, request);
        EwaybillOrderCreateVo res = new EwaybillOrderCreateVo();
        if(res.getErrcode() == 0){
            // 数据
            return ApiResultVo.success(res);
        }else {
            return ApiResultVo.error(ApiResultVoEnum.ApiException,res.getErrmsg());
        }
    }


}
