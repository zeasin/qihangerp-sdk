package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.wei.model.Product;
import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WeiGoodsApiHelper {

    /**
     * 获取商品列表
     * @param accessToken
     * @return
     */

    public static ApiResultVo<Product> pullGoodsList(String accessToken)  {
        String serverUrl = "https://api.weixin.qq.com";
//        ApiResultVo<Token> token = TokenApiHelper.getToken(appId, appSecret);
//        if(token.getCode() != ApiResultVoEnum.SUCCESS.getIndex()) return ApiResultVo.error(ApiResultVoEnum.ApiException,"获取Token失败");
//        String accessToken = token.getData().getAccess_token();

        List<Product> productList = new ArrayList<>();

        Integer pageSize = 30;
        String result = pullGoodsList(accessToken, null, pageSize, null);

        return ApiResultVo.success(productList.size(), productList);
    }
    public static String pullGoodsDetail(String accessToken, String productId,Integer dataType){
        //https://api.weixin.qq.com/channels/ec/product/get?access_token=ACCESS_TOKEN
        //data_type 默认取1 1:获取线上数据 2:获取草稿数据 3:同时获取线上和草稿数据（注意：上架过的商品才有线上数据）
        Map<String,Object> params = new HashMap<>();
        params.put("product_id",productId);
        if(dataType!=null){
            params.put("data_type",dataType);
        }
        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            String url = ServerUrl.serverApiUrl + ServerUrl.goodsDetailApiUrl + "?access_token=" + accessToken;
//            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
//            return stringHttpResponse.body();
            return OkHttpClientHelper.post(url,objectMapper.writeValueAsString(params));
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }


    static String pullGoodsList(String accessToken, Integer status, Integer pageSize, String nextKey) {
        if(pageSize==null || pageSize<=0){
            pageSize = 30;
        }
        Map<String,Object> params = new HashMap<>();
        params.put("page_size",pageSize);
        if(status!=null){
            params.put("status",status);
        }
        if(StringUtils.isNotBlank(nextKey)){
            params.put("next_key",nextKey);
        }

        //https://api.weixin.qq.com/channels/ec/product/list/get?access_token=ACCESS_TOKEN
        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            String url = ServerUrl.serverApiUrl + ServerUrl.goodsListApiUrl + "?access_token=" + accessToken;
//            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsListApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
//            return stringHttpResponse.body();
            return OkHttpClientHelper.post(url,objectMapper.writeValueAsString(params));
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
