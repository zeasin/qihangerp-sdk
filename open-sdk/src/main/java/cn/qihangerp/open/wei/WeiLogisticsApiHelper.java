package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import cn.qihangerp.open.wei.vo.ewaybill.AccountGetVo;
import cn.qihangerp.open.wei.vo.ewaybill.AccountVo;
import cn.qihangerp.open.wei.vo.ewaybill.DeliveryGetVo;
import cn.qihangerp.open.wei.vo.ewaybill.DeliveryVo;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WeiLogisticsApiHelper {

    public static ApiResultVo<DeliveryVo> getLogisticsCompanyList(String accessToken)  {
        String serverUrl = "https://api.weixin.qq.com";
        Map<String,Object> params = new HashMap<>();

        try {
            ObjectMapper objectMapper = new ObjectMapper();
            String url =ServerUrl.serverApiUrl + ServerUrl.logisticsApiUrl + "?access_token=" + accessToken;
//            HttpResponse<String> result = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
            String result= OkHttpClientHelper.post(url,objectMapper.writeValueAsString(params));
            JSONObject jsonObject = JSONObject.parseObject(result);
            if(jsonObject.getInteger("errcode")!=0){
                return ApiResultVo.error(1500,jsonObject.getString("errmsg"));
            }

            List<DeliveryVo> list = jsonObject.getList("company_list", DeliveryVo.class);

            return ApiResultVo.success(list);
        }catch (Exception e){
            return ApiResultVo.error(ApiResultVoEnum.ApiException, e.getMessage());
        }

    }

}
