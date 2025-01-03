package cn.qihangerp.open.wei;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.common.HttpUtils;
import cn.qihangerp.open.common.RemoteUtil;

import cn.qihangerp.open.wei.model.Product;

import com.alibaba.fastjson2.JSONObject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.util.StringUtils;

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

//    public static ApiResultVo<Product> pullGoodsList(String accessToken)  {
//        String serverUrl = "https://api.weixin.qq.com";
////        ApiResultVo<Token> token = TokenApiHelper.getToken(appId, appSecret);
////        if(token.getCode() != ApiResultVoEnum.SUCCESS.getIndex()) return ApiResultVo.error(ApiResultVoEnum.ApiException,"获取Token失败");
////        String accessToken = token.getData().getAccess_token();
//
//        List<Product> productList = new ArrayList<>();
//
////        WeiGoodsApiService remoting = RemoteUtil.Remoting(serverUrl, WeiGoodsApiService.class);
//        Integer pageSize = 30;
////        int getTotal =0;//获取到了总条数
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
//
//        return ApiResultVo.success(productList.size(), productList);
//    }
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
            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsDetailApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
            return stringHttpResponse.body();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }


    public static String pullGoodsList(String accessToken, Integer status,Integer pageSize,String nextKey) {
        if(pageSize==null || pageSize<=0){
            pageSize = 30;
        }
        Map<String,Object> params = new HashMap<>();
        params.put("page_size",pageSize);
        if(status!=null){
            params.put("status",status);
        }
        if(StringUtils.hasText(nextKey)){
            params.put("next_key",nextKey);
        }

        //https://api.weixin.qq.com/channels/ec/product/list/get?access_token=ACCESS_TOKEN
        try {
            // 创建 ObjectMapper 实例
            ObjectMapper objectMapper = new ObjectMapper();
            HttpResponse<String> stringHttpResponse = HttpUtils.doPostJson(ServerUrl.serverApiUrl + ServerUrl.goodsListApiUrl + "?access_token=" + accessToken, objectMapper.writeValueAsString(params));
            return stringHttpResponse.body();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
