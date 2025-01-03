package cn.qihangerp.open.jd;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.jd.model.JiaMi;
import cn.qihangerp.open.jd.model.OrderDetail;
import cn.qihangerp.open.jd.model.OrderInfo;
import cn.qihangerp.open.common.DateUtil;
import cn.qihangerp.open.common.SignUtil;
import com.alibaba.fastjson2.JSONObject;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class JdOrderApiHelper {
    private static Logger log = LoggerFactory.getLogger(JdOrderApiHelper.class);

    private static final String ORDER_FIELDS = "venderId,orderId,orderType,payType,orderTotalPrice,orderSellerPrice,orderPayment,freightPrice,sellerDiscount," +
            "orderState,orderStateRemark,deliveryType,invoiceCode,orderRemark,orderStartTime,orderEndTime,venderRemark,balanceUsed,pin,returnOrder," +
            "paymentConfirmTime,waybill,logisticsId,modified,directParentOrderId,parentOrderId,orderSource,storeOrder,realPin,open_id,open_id_buyer," +
            "invoiceInfo,invoiceEasyInfo,itemInfoList,isShipmenttype,scDT,idSopShipmenttype,orderStartTime,consigneeInfo,orderMarkDesc,couponDetailList";

    private static final String ORDER_DETAIL_FIELDS = "venderId,orderId,orderType,payType,orderTotalPrice,orderSellerPrice,orderPayment,freightPrice,sellerDiscount," +
            "orderState,orderStateRemark,deliveryType,invoiceCode,orderRemark,orderStartTime,orderEndTime,venderRemark,balanceUsed,pin,returnOrder," +
            "paymentConfirmTime,waybill,logisticsId,modified,directParentOrderId,parentOrderId,orderSource,storeOrder,realPin,open_id,open_id_buyer," +
            "invoiceInfo,invoiceEasyInfo,itemInfoList,isShipmenttype,scDT,idSopShipmenttype,orderStartTime,consigneeInfo,orderMarkDesc,couponDetailList";
    protected static String pullOrder( LocalDateTime startTime, LocalDateTime endTime,Integer pageNo,Integer pageSize,String appKey,String appSecret,String accessToken){
        String startTimeStr = startTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        String endTimeStr = endTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.pop.order.enSearch");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("start_date", startTimeStr);
            pmap.put("end_date", endTimeStr);
            pmap.put("order_state", "ALL");
            pmap.put("optional_fields", ORDER_FIELDS);
            pmap.put("page", pageNo);
            pmap.put("page_size", pageSize);
            pmap.put("sortType", 1);
            pmap.put("dateType", 0);
            ObjectMapper mapper = new ObjectMapper();
            mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_NULL);
            mapper.disable(new DeserializationConfig.Feature[]{DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES});
            mapper.configure(org.codehaus.jackson.map.SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS, false);
            String p = mapper.writeValueAsString(pmap);
//        String param = JSONObject.toJSONString(pmap);
            params.put("360buy_param_json", p);
        }catch (Exception e){
            return "";
        }

        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {

        }
//        params.put("360buy_param_json", URLEncoder.encode(param));
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> {
            try {
                joiner.add(key + "=" + URLEncoder.encode(value,"UTF-8"));
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        });
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
        HttpClient client = HttpClient.newBuilder().build();
        java.net.http.HttpRequest request = java.net.http.HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/x-www-form-urlencoded")
                .GET()
                .build();
        try {
            HttpResponse<String> send = client.send(request, HttpResponse.BodyHandlers.ofString());
            String result = send.body();
            return result;
        }catch (Exception e){
            return "";
        }
    }
    /**
     * 更新订单（循环分页）
     *
     * @param
     * @param
     * @param accessToken
     * @return
     */
    public static ApiResultVo<OrderInfo> pullOrder(LocalDateTime startTime, LocalDateTime endTime, String appKey, String appSecret, String accessToken) {
        Integer page = 1;
        Integer pageSize = 10;
        // 拉取接口
        String result = pullOrder(startTime,endTime,1,pageSize,appKey,appSecret,accessToken);
        List<OrderInfo> orderList = new ArrayList<>();
        if(StringUtils.hasText(result)) {
            JSONObject jsonObject = JSONObject.parseObject(result);
            if (jsonObject.getJSONObject("error_response") == null) {
//            String code=  jsonObject.getJSONObject("jingdong_pop_order_enSearch_responce").get("code").toString();
                if ("0".equals(jsonObject.getJSONObject("jingdong_pop_order_enSearch_responce").getString("code"))) {
//                JSONObject orderResult= (JSONObject)((JSONObject)jsonObject.get("jingdong_pop_order_enSearch_responce")).get("searchorderinfo_result");
//                Integer orderTotal = orderResult.getInteger("orderTotal");
                    Integer orderTotal = jsonObject.getJSONObject("jingdong_pop_order_enSearch_responce").getJSONObject("searchorderinfo_result").getInteger("orderTotal");
                    if (orderTotal != null && orderTotal > 0) {
                        //计算分页
                        int totalPage = (orderTotal % pageSize == 0) ? orderTotal / pageSize.intValue() : (orderTotal / pageSize.intValue()) + 1;

                        // 获取结果
//                    JSONArray orderInfoList = orderResult.getJSONArray("orderInfoList");
                        orderList.addAll(jsonObject.getJSONObject("jingdong_pop_order_enSearch_responce").getJSONObject("searchorderinfo_result").getList("orderInfoList", OrderInfo.class));
                        if (orderTotal > pageSize) {
                            while (totalPage > page) {
                                page++;
                                String result1 = pullOrder(startTime, endTime, page, pageSize, appKey, appSecret, accessToken);
                                if (StringUtils.hasText(result1)) {
                                    JSONObject jsonObject1 = JSONObject.parseObject(result1);
                                    if ("0".equals(jsonObject1.getJSONObject("jingdong_pop_order_enSearch_responce").getString("code"))) {
                                        orderList.addAll(jsonObject1.getJSONObject("jingdong_pop_order_enSearch_responce").getJSONObject("searchorderinfo_result").getList("orderInfoList", OrderInfo.class));
                                    }
                                }
                            }
                        }
                    }
                }
            }else {
                return ApiResultVo.error(ApiResultVoEnum.ParamsError,jsonObject.getJSONObject("error_response").getString("zh_desc"));
            }
        }
        if(!orderList.isEmpty()){
            for (var ord:orderList) {
                ord.getConsigneeInfo().setMobile(JiaMi.serialize(ord.getConsigneeInfo().getMobile()));
                ord.getConsigneeInfo().setTelephone(JiaMi.serialize(ord.getConsigneeInfo().getTelephone()));
            }
        }
        return ApiResultVo.success(orderList.size(),orderList);
    }

    public static ApiResultVo<OrderDetail> pullOrderDetail(Long orderId, String appKey, String appSecret, String accessToken) {
        log.info("=======开始拉取JD订单详情{}，参数：{}=========", LocalDateTime.now(), orderId);

        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.pop.order.enGet");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("optional_fields", ORDER_DETAIL_FIELDS);
            pmap.put("order_id", orderId);
            ObjectMapper mapper = new ObjectMapper();
            mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_NULL);
            mapper.disable(new DeserializationConfig.Feature[]{DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES});
            mapper.configure(org.codehaus.jackson.map.SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS, false);
            String p = mapper.writeValueAsString(pmap);
//        String param = JSONObject.toJSONString(pmap);
            params.put("360buy_param_json", p);
        }catch (Exception e){
            e.printStackTrace();
        }
        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> {
            try {
                joiner.add(key + "=" + URLEncoder.encode(value,"UTF-8"));
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        });
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
        HttpClient client = HttpClient.newBuilder().build();
        java.net.http.HttpRequest request = java.net.http.HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/x-www-form-urlencoded")
                .GET()
                .build();
        try {
            HttpResponse<String> send = client.send(request, HttpResponse.BodyHandlers.ofString());
            String result = send.body();
            if(StringUtils.hasText(result)) {
                JSONObject jsonObject = JSONObject.parseObject(result);
                if (jsonObject.getJSONObject("error_response") == null) {

                    if ("0".equals(jsonObject.getJSONObject("jingdong_pop_order_enGet_responce").getString("code"))) {
                        OrderDetail orderDetail = jsonObject.getJSONObject("jingdong_pop_order_enGet_responce").getJSONObject("orderDetailInfo").getObject("orderInfo",OrderDetail.class);
                        return ApiResultVo.success(orderDetail);
                    }
                }
                else {
                    return ApiResultVo.error(ApiResultVoEnum.ParamsError,jsonObject.getJSONObject("error_response").getString("zh_desc"));
                }
            }
        }catch (Exception e){
        }
        return ApiResultVo.error(ApiResultVoEnum.ApiException,"未知错误");

    }

   }
