package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.wei.model.Product;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;

@Component
public class WeiGoodsApiService {

    public ApiResultVo<Product> pullGoodsList(String accessToken)  {
        String serverUrl = "https://api.weixin.qq.com";
//        ApiResultVo<Token> token = TokenApiHelper.getToken(appId, appSecret);
//        if(token.getCode() != ApiResultVoEnum.SUCCESS.getIndex()) return ApiResultVo.error(ApiResultVoEnum.ApiException,"获取Token失败");
//        String accessToken = token.getData().getAccess_token();

        List<Product> productList = new ArrayList<>();

//        WeiGoodsApiService remoting = RemoteUtil.Remoting(serverUrl, WeiGoodsApiService.class);
        Integer pageSize = 30;
        String listResult = WeiGoodsApiHelper.pullGoodsList(accessToken, 5, pageSize, null);
        if(StringUtils.isNotBlank(listResult)){
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if(jsonObject.getInteger("errcode") == 0){
                JSONArray productIds = jsonObject.getJSONArray("product_ids");
                if(productIds != null && productIds.size() > 0) {
                    productIds.forEach(productId -> {
                        String detailResult = WeiGoodsApiHelper.pullGoodsDetail(accessToken, productId.toString(), null);
                        if (StringUtils.isNotBlank(detailResult)) {
                            JSONObject detailJsonObject = JSONObject.parseObject(detailResult);
                            if (detailJsonObject.getInteger("errcode") == 0) {
                                Product goodsDetail = JSONObject.parseObject(detailJsonObject.getString("product"), Product.class);
                                productList.add(goodsDetail);
                            }
                        }
                    });
                    // 判断是否还有下一页
                    Integer totalNum = jsonObject.getInteger("total_num");
                    if (totalNum > pageSize) {
                        while (productList.size() < totalNum) {
                            String nextKey = jsonObject.getString("next_key");
                            String pageResult = WeiGoodsApiHelper.pullGoodsList(accessToken, null, pageSize, nextKey);
                            if (StringUtils.isNotBlank(pageResult)) {
                                JSONObject jsonObject1 = JSONObject.parseObject(pageResult);
                                if(jsonObject1.getInteger("errcode") == 0) {
                                    JSONArray productIds1 = jsonObject1.getJSONArray("product_ids");
                                    if(productIds1 != null && productIds1.size() > 0) {
                                        productIds1.forEach(productId -> {
                                            String detailResult = WeiGoodsApiHelper.pullGoodsDetail(accessToken, productId.toString(), null);
                                            if (StringUtils.isNotBlank(detailResult)) {
                                                JSONObject detailJsonObject = JSONObject.parseObject(detailResult);
                                                if (detailJsonObject.getInteger("errcode") == 0) {
                                                    Product goodsDetail = JSONObject.parseObject(detailJsonObject.getString("product"), Product.class);
                                                    productList.add(goodsDetail);
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        }
                    }
                }


            }else if(jsonObject.getInteger("errcode") == 42001){
                return ApiResultVo.error(ApiResultVoEnum.TokenFail,jsonObject.getString("errmsg"));
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ApiException,jsonObject.getString("errmsg"));
            }
        }else{
            return ApiResultVo.error(ApiResultVoEnum.ApiException,"获取商品list失败");
        }
//        int getTotal =0;//获取到了总条数

//        GoodsListApiBo apiBo = new GoodsListApiBo();
//        apiBo.setPage_size(pageSize);
//        apiBo.setStatus(5);
//        //https://api.weixin.qq.com/channels/ec/product/list/get?access_token=ACCESS_TOKEN
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl+ServerUrl.goodsListApiUrl+"?access_token=" + accessToken, JSONObject.toJSONString(apiBo));
//        String body = stringHttpResponse.body();
//        GoodsListVo res = JSONObject.parseObject(body, GoodsListVo.class);
////        GoodsListVo res = remoting.getGoodsList(accessToken, apiBo);
//        if(res.getErrcode() == 0){
//            // 第一页数据
//            if(res.getProduct_ids()!=null&&res.getProduct_ids().length>0){
//                for (var productId:res.getProduct_ids()) {
//                    GoodsDetailApiBo apiBo1 = new GoodsDetailApiBo();
//                    apiBo1.setProduct_id(productId.toString());
//                    GoodsDetailVo goodsDetail = pullGoodsDetail(accessToken,apiBo1.getProduct_id());// remoting.getGoodsDetail(accessToken, apiBo1);
//                    if(goodsDetail.getErrcode()==0){
//                        productList.add(goodsDetail.getProduct());
//                    }
//                }
//            }
//
//            // 如果还有分页
//            if(res.getTotal_num()>pageSize){
//                while (productList.size()<res.getTotal_num()){
//                    String next = res.getNext_key();
//                    apiBo.setNext_key(next);
//                    GoodsListVo res1 = pullGoodsDetail(accessToken,apiBo) remoting.getGoodsList(accessToken, apiBo);
//                    if(res1.getErrcode() == 0){
//                        if(res.getProduct_ids()!=null&&res.getProduct_ids().length>0){
//                            for (var productId:res.getProduct_ids()) {
//                                GoodsDetailApiBo apiBo1 = new GoodsDetailApiBo();
//                                apiBo1.setProduct_id(productId.toString());
//                                GoodsDetailVo goodsDetail = remoting.getGoodsDetail(accessToken, apiBo1);
//                                if(goodsDetail.getErrcode()==0){
//                                    productList.add(goodsDetail.getProduct());
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }else {
//            return ApiResultVo.error(ApiResultVoEnum.ApiException,res.getErrmsg());
//        }

        return ApiResultVo.success(productList.size(), productList);
    }
}
