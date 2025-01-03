package cn.qihangerp.open.dou;

import cn.qihangerp.common.common.ApiResultVo;
import cn.qihangerp.common.common.ApiResultVoEnum;
import cn.qihangerp.open.dou.model.Goods;
import cn.qihangerp.open.dou.model.GoodsListResultVo;
import cn.qihangerp.open.dou.model.GoodsSku;
import cn.qihangerp.open.dou.utils.ExpressClient;
import cn.qihangerp.open.dou.utils.HttpUtil;
import cn.qihangerp.open.dou.utils.MD5Utils;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class DouGoodsApiHelper {

    public static ApiResultVo<GoodsListResultVo> getGoodsList(String appKey, String appSercet, String accessToken,Integer pageIndex,Integer pageSize) throws Exception{
        String method = "product.listV2";
        LinkedHashMap<String, String> jsonMap =new LinkedHashMap<>();
        jsonMap.put("page",pageIndex.toString());
        jsonMap.put("size",pageSize.toString());

        ObjectMapper objectMapper = new ObjectMapper();
        String paramJson = objectMapper.writeValueAsString(jsonMap);
        long timestamp = System.currentTimeMillis()/1000;

        String signStr = "app_key"+appKey+"method"+method+"param_json"+paramJson+"timestamp"+timestamp+"v"+"2";
        signStr = appSercet+signStr+appSercet;
        String sign = MD5Utils.MD5Encode(signStr);

        String sendUrl = "https://openapi-fxg.jinritemai.com/product/listV2";

        Map<String, String> params = new HashMap<>();
        params.put("method", method);
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("timestamp", timestamp+"");
        params.put("param_json", paramJson);
        params.put("v", "2");
        params.put("sign", sign);

        String surl = sendUrl+ "?"+ HttpUtil.map2Url(params);

        try {
            HttpResponse<String> response = ExpressClient.doPost(surl, paramJson);
            if (response.statusCode() == 200) {
                String resultStr = response.body();

                JSONObject resultObj = JSONObject.parseObject(resultStr);
                if(resultObj.getInteger("code") == 10000){
                    JSONObject resultData = resultObj.getJSONObject("data");
                    Integer total  = resultData.getInteger("total");
                    List<Goods> goodsList = JSONArray.parseArray(resultData.getString("data"), Goods.class);
                    if(goodsList!=null){
                        for (var g:goodsList) {
                            ApiResultVo<GoodsSku> goodsSku = getGoodsSku(appKey, appSercet, accessToken, g.getProductId());
                            if(goodsSku.getCode()==0){
                                g.setSkuList(goodsSku.getList());
                            }
                        }
                    }
                    return ApiResultVo.success(new GoodsListResultVo(total,goodsList));
                }else{
                    return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "请求API错误："+resultObj.getString("sub_msg"));
                }
            }else{
                return  ApiResultVo.error(ApiResultVoEnum.NETWORK_ERROR.getIndex(), "网络请求错误");
            }
        } catch (Exception e) {
            return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "系统异常：" + e.getMessage());
        }
    }

    protected static ApiResultVo<GoodsSku> getGoodsSku(String appKey, String appSercet, String accessToken,Long productId) throws Exception{
        String method = "sku.list";
        LinkedHashMap<String, String> jsonMap =new LinkedHashMap<>();
        jsonMap.put("product_id",productId.toString());

        ObjectMapper objectMapper = new ObjectMapper();
        String paramJson = objectMapper.writeValueAsString(jsonMap);
        long timestamp = System.currentTimeMillis()/1000;

        String signStr = "app_key"+appKey+"method"+method+"param_json"+paramJson+"timestamp"+timestamp+"v"+"2";
        signStr = appSercet+signStr+appSercet;
        String sign = MD5Utils.MD5Encode(signStr);

        String sendUrl = "https://openapi-fxg.jinritemai.com/sku/list";

        Map<String, String> params = new HashMap<>();
        params.put("method", method);
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("timestamp", timestamp+"");
        params.put("param_json", paramJson);
        params.put("v", "2");
        params.put("sign", sign);

        String surl = sendUrl+ "?"+ HttpUtil.map2Url(params);

        try {
            HttpResponse<String> response = ExpressClient.doPost(surl, paramJson);
            if (response.statusCode() == 200) {
                String resultStr = response.body();

                JSONObject resultObj = JSONObject.parseObject(resultStr);
                if (resultObj.getInteger("code") == 10000) {
                    List<GoodsSku> skus = JSONArray.parseArray(resultObj.getString("data"), GoodsSku.class);
                    return ApiResultVo.success(skus.size(),skus);
                }else{
                    return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "请求API错误："+resultObj.getString("sub_msg"));
                }
            }else{
                return  ApiResultVo.error(ApiResultVoEnum.NETWORK_ERROR.getIndex(), "网络请求错误");
            }
        } catch (Exception e) {
            return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "系统异常：" + e.getMessage());
        }
    }
}
