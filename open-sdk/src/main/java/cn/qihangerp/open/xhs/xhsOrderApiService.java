package cn.qihangerp.open.xhs;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.xhs.response.OrderItem;
import cn.qihangerp.open.xhs.response.OrderResponse;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Component
public class xhsOrderApiService {

    public ApiResultVo<OrderResponse> pullOrderList(String appId, String appSecret, String accessToken, LocalDateTime startTime, LocalDateTime  endTime) throws IOException {
        List<OrderResponse> productList = new ArrayList<>();
        Integer pageIndex = 1;
        Integer pageSize = 30;
        Integer total = 0;
        Integer maxPageNo = 1;
        String listResult = xhsOrderApiHelper.pullOrderList(appId,appSecret,accessToken,startTime,endTime, pageIndex, pageSize);
        log.info("=======接口返回：{}",listResult);
        if(StringUtils.hasText(listResult)){
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if(jsonObject.getBoolean("success")) {
                log.info("==========获取小红书订单LIST成功=============");
                JSONObject data = jsonObject.getJSONObject("data");
                total = data.getInteger("total");
                maxPageNo = data.getInteger("maxPageNo");

                JSONArray dataList = data.getJSONArray("orderList");
                if (dataList != null && dataList.size() > 0) {
                    for (int i = 0; i < dataList.size(); i++) {
                        OrderResponse order = dataList.getObject(i, OrderResponse.class);
                        log.info("=======组装小红书订单===========");

                        String detailResult = xhsOrderApiHelper.getOrderDetail(appId,appSecret,accessToken,order.getOrderId());
                        JSONObject detailResultObj = JSONObject.parseObject(detailResult);
                        if(detailResultObj.getInteger("error_code") == 0) {
                            order = detailResultObj.getObject("data", OrderResponse.class);
                            List<OrderItem> skuList = detailResultObj.getJSONObject("data").getList("skuList", OrderItem.class);
                            order.setItemList(skuList);

                            log.info("=======组装小红书订单ITEM=======开始获取订单收货地址====");
                            String receiverResult = xhsOrderApiHelper.getOrderReceiverInfo(appId,appSecret,accessToken,order.getOrderId(),order.getOpenAddressId());
                            log.info("=======收货地址：{}",receiverResult);
                            JSONObject receiverResultObj = JSONObject.parseObject(receiverResult);
                            if(receiverResultObj.getInteger("error_code") == 0) {
                                // 补充收货信息
                                JSONArray jsonArray = receiverResultObj.getJSONObject("data").getJSONArray("receiverInfos");
                                order.setReceiver(jsonArray.getJSONObject(0).getString("receiverName"));
                                order.setPhone(jsonArray.getJSONObject(0).getString("receiverPhone"));
                                order.setAddress(jsonArray.getJSONObject(0).getString("receiverAddress"));
                            }
                            productList.add(order);
                        }else{
                            return ApiResultVo.error(detailResultObj.getString("error_msg"));
                        }

                    }
                }
            }
            else {
                return ApiResultVo.error(jsonObject.getString("error_msg"));
            }
        }else{
            return ApiResultVo.error("获取商品list失败");
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

        return ApiResultVo.success(total, productList);
    }

    /**
     * product.getDetailSkuList
     * 商品列表完整版
     * @param appId
     * @param appSecret
     * @param accessToken
     * @return
     * @throws IOException
     */
    public ApiResultVo<OrderResponse> getOrderDetail(String appId,String appSecret,String accessToken, String orderId) throws IOException {

        String listResult = xhsOrderApiHelper.getOrderDetail(appId,appSecret,accessToken, orderId);
        if(StringUtils.hasText(listResult)){
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if(jsonObject.getBoolean("success")) {
                log.info("==========获取小红书商品LIST成功=============");
                OrderResponse orderResponse = jsonObject.getObject("data",OrderResponse.class);

                List<OrderItem> skuList = jsonObject.getJSONObject("data").getList("skuList", OrderItem.class);
                orderResponse.setItemList(skuList);
                return ApiResultVo.success(orderResponse);
            }
            else {
                return ApiResultVo.error(ApiResultVoEnum.ApiException,jsonObject.getString("error_msg"));
            }
        }else{
            return ApiResultVo.error(ApiResultVoEnum.ApiException,"获取商品list失败");
        }
    }
}
