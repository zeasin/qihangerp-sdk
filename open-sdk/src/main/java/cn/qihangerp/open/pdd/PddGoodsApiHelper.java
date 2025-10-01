package cn.qihangerp.open.pdd;

import cn.qihangerp.open.common.*;
import cn.qihangerp.open.dou.utils.ExpressClient;
import cn.qihangerp.open.pdd.model.Goods;
import cn.qihangerp.open.pdd.model.GoodsResultVo;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PddGoodsApiHelper {
    private static Logger log = LoggerFactory.getLogger(PddGoodsApiHelper.class);

    /**
     * 拉取商品列表
     * @param clientId
     * @param clientSecret
     * @param accessToken
     * @param pageIndex
     * @param pageSize
     * @return
     */

    public static ApiResultVo<GoodsResultVo> pullGoodsList(String clientId, String clientSecret, String accessToken, Integer pageIndex, Integer pageSize) throws IOException {

        String result = pullGoodsListResult(clientId, clientSecret, accessToken,pageIndex,pageSize);
        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");

        JSONObject jsonObject = JSONObject.parseObject(result);
        if(jsonObject.getString("error_response") !=null)
            return ApiResultVo.error(jsonObject.getJSONObject("error_response").getInteger("error_code"), jsonObject.getJSONObject("error_response").getString("error_msg"));

        if(jsonObject.getJSONObject("goods_list_get_response") == null) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口返回数据错误");
        Integer totalItem = jsonObject.getJSONObject("goods_list_get_response").getInteger("total_count");

        List<Goods> goodsList = JSONArray.parseArray(jsonObject.getJSONObject("goods_list_get_response").getString("goods_list"), Goods.class);
        return ApiResultVo.success(new GoodsResultVo(totalItem,goodsList));
    }

    protected static String pullGoodsListResult(String clientId, String clientSecret, String accessToken,Integer pageIndex,Integer pageSize) throws IOException {
        String url = "https://gw-api.pinduoduo.com/api/router";
        Map<String, String> params = new HashMap();
        params.put("type", "pdd.goods.list.get");
        params.put("client_id", clientId);
        params.put("access_token", accessToken);
        long var10002 = System.currentTimeMillis();
        params.put("timestamp", "" + var10002 / 1000L);
        params.put("page", "" + pageIndex);
        params.put("page_size", "" + pageSize);

        try {
            String sign = PDDSignGenerator.generateSign(params, clientSecret);
            params.put("sign", sign);
        } catch (Exception var9) {
            return "";
        }

        // 调用接口

//        PddGoodsApiService remoting = RemoteUtil.Remoting(url, PddGoodsApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getGoodsList(jsonString);
//        return result;
//        HttpResponse<String> stringHttpResponse1 = ExpressClient.doPost(url, jsonString);
//        String resultStr = stringHttpResponse1.body();
        String post = OkHttpClientHelper.post(url, jsonString);
        return post;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
    }


}