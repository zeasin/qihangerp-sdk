package cn.qihangerp.open.dou;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.dou.model.order.Order;
import cn.qihangerp.open.dou.utils.ExpressClient;
import cn.qihangerp.open.dou.utils.HttpUtil;
import cn.qihangerp.open.dou.utils.MD5Utils;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.http.HttpResponse;
import java.util.*;


public class DouOrderApiHelper {
    private static Logger log = LoggerFactory.getLogger(DouOrderApiHelper.class);



    public static ApiResultVo<Order> pullOrderList(Long startTime, Long endTime, Integer pageIndex, Integer pageSize, String appKey, String appSecret, String accessToken) {
//        var shop = shopService.selectShopById(shopId);
//        if(shop == null) return new ApiResult<>(ResultVoEnum.Fail.getIndex(), "店铺不存在！");
//        String appKey = shop.getAppkey();
//        String appSercet = shop.getAppSercet();
//        if(!StringUtils.hasText(appKey) || !StringUtils.hasText(appSercet)) return new ApiResult<>(ResultVoEnum.Fail.getIndex(), "参数错误：请设置appkey和serecet");
//        String appKey = "7005157746437834253";
//        String appSercet="8104c8b8-9085-4a80-9248-629759b4f1a3";
//        String appKey = "7344938657423296019";
//        String appSercet="4e704882-832a-42e5-845f-6af991ce0ce2";

//         method = "order.searchList";
//        //设置appKey和appSecret，全局设置一次
//        GlobalConfig.initAppKey(appKey);
//        GlobalConfig.initAppSecret(appSercet);
//        //入参为shopId
//        AccessToken accessToken = AccessTokenBuilder.build(4463798L); //123456是shopId
//        if(accessToken.getCode().equals("30002")){
//            return new ApiResult<>(ResultVoEnum.Fail.getIndex(),accessToken.getMsg());
//        }
//        if(!accessToken.getCode().equals("10000")){
//            return new ApiResult<>(ResultVoEnum.Fail.getIndex(),accessToken.getMsg());
//        }
//        int updCount =0;
//        int addCount =0;
//        int failCount = 0;
//
//        OrderSearchListRequest orderReq = new OrderSearchListRequest();
//        OrderSearchListParam orderParam = new OrderSearchListParam();
//        orderParam.setPage(1L);
//        orderParam.setSize(20L);
//        orderParam.setOrderAsc(false);
//        orderParam.setCreateTimeStart(startTime);
//        orderReq.setParam(orderParam);
//        OrderSearchListResponse orderRes = null;
//        try {
//            orderRes = orderReq.execute(accessToken);
//            if(orderRes.getCode().equals("10000")){
//                if(orderRes.getData() == null || orderRes.getData().getTotal()  == 0) return new ApiResult<>(ResultVoEnum.DataError.getIndex(),"无订单可以更新");
//
//                // 循环处理订单
//                for(var order:orderRes.getData().getShopOrderList()){
////                    DcDouyinOrdersEntity douYinOrder= JsonUtil.strToObject(JSON.toJSONString(json),DcDouyinOrdersEntity.class);
////                    var address = JsonUtil.strToObject(douYinOrder.getPostAddr(),DcDouyinAddressVo.class);
////                    String postAddr=new StringBuilder(address.getProvince().getName()).append(address.getCity().getName()).append(address.getTown().getName()).append(address.getDetail()).toString();
////                    douYinOrder.setPostAddr(postAddr);
////
////                    var result =  douyinOrderService.editDouYinOrder(douYinOrder);
////                    if(result.getCode() == EnumResultVo.DataExist.getIndex()) updCount++;
////                    else if(result.getCode() == EnumResultVo.Fail.getIndex()) failCount++;
////                    else if(result.getCode() == EnumResultVo.SUCCESS.getIndex()) addCount++;
//                }
//            }else{
//                return new ApiResult<>(ResultVoEnum.Fail.getIndex(),orderRes.getSubMsg());
//            }
//        }catch (Exception e){
//            return new ApiResult<>(ResultVoEnum.Fail.getIndex(),e.getMessage());
//        }

        String method = "order.searchList";
        LinkedHashMap<String, Object> jsonMap = new LinkedHashMap<>();
//        jsonMap.put("end_time",DateUtil.dateToString(new Date(),"yyyy/MM/dd HH:mm:ss"));//截至时间
//        jsonMap.put("end_time",DateUtil.unixTimeStampToDate2(endTime,"yyyy/MM/dd HH:mm:ss"));//截至时间
//        jsonMap.put("is_desc","1");//设置了此字段即为desc (最近的在前), 不设置默认asc
        jsonMap.put("order_by", "update_time");
        jsonMap.put("page", pageIndex);//查询的第几页,默认值为0, 第一页下标从0开始
        jsonMap.put("size", pageSize);//每页大小 默认为10, 最大100
        jsonMap.put("update_time_end", endTime);
        jsonMap.put("update_time_start", startTime);

//        jsonMap.put("start_time",DateUtil.unixTimeStampToDate2(startTime,"yyyy/MM/dd HH:mm:ss"));//开始时间
//        jsonMap.put("start_time","2020/05/03 00:00:01");//开始时间

        //jsonParam.put("order_by","create_time");//支持按照订单生成时间和最后修改时间进行搜索 create_time 或 update_time (默认创建时间)
        //jsonParam.put("order_status","1");//订单状态

        JSONObject jsonObject = new JSONObject();
        jsonObject.putAll(jsonMap);

        String paramJson = jsonObject.toJSONString();//"{\"end_time\":\""+endTime1+"\",\"is_desc\":\"1\",\"page\":\"0\",\"size\":\"50\",\"start_time\":\""+startTime1+"\"}";
//        String timestamp = DateUtil.dateToString(new Date(),"yyyy-MM-dd HH:mm:ss");
        long timestamp = System.currentTimeMillis() / 1000;

        String signStr = "app_key" + appKey + "method" + method + "param_json" + paramJson + "timestamp" + timestamp + "v" + "2";
        signStr = appSecret + signStr + appSecret;

        String sign = MD5Utils.MD5Encode(signStr);

//        String  sendUrl= "https://openapi.jinritemai.com/order/searchList";
        String sendUrl = "https://openapi-fxg.jinritemai.com/order/searchList";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", method);
        params.put("access_token", accessToken);
//        params.put("param_json",paramJson);
        params.put("timestamp", +timestamp + "");
        params.put("v", "2");
        params.put("sign", sign);

        try {
            String surl = sendUrl + "?" + HttpUtil.map2Url(params);
            HttpResponse<String> response = ExpressClient.doPost(surl, paramJson);
            if (response.statusCode() == 200) {
//                String resultStr = response.body();
                JSONObject resultObj = JSONObject.parseObject(response.body());
                if (resultObj.getInteger("code") == 10000) {

                    Integer total = resultObj.getJSONObject("data").getInteger("total");

                    if (total == 0) return ApiResultVo.success(0, new ArrayList<>());
//                    JSONArray jsonArray = resultObj.getJSONObject("data").getJSONArray("shop_order_list");
//                    for (var js:jsonArray) {
//                        String s = JSONObject.toJSONString(js);
//                        s = "";
//                    }
                    List<Order> orderList = JSONArray.parseArray(resultObj.getJSONObject("data").getString("shop_order_list"), Order.class);
//                    List<Order> orderList = JSONArray.parseArray(resultObj.getJSONObject("data").getString("shop_order_list"), Order.class);
//                    for (var order : douOrderList) {
//                        String s = "";
//                    }
                    return ApiResultVo.success(total, orderList);
//                for(var json:jsonArray){
//                    DcDouyinOrdersEntity douYinOrder= JsonUtil.strToObject(JSON.toJSONString(json),DcDouyinOrdersEntity.class);
//                    var address = JsonUtil.strToObject(douYinOrder.getPostAddr(),DcDouyinAddressVo.class);
//                    String postAddr=new StringBuilder(address.getProvince().getName()).append(address.getCity().getName()).append(address.getTown().getName()).append(address.getDetail()).toString();
//                    douYinOrder.setPostAddr(postAddr);
//
//                    var result =  douyinOrderService.editDouYinOrder(douYinOrder);
//                    if(result.getCode() == EnumResultVo.DataExist.getIndex()) updCount++;
//                    else if(result.getCode() == EnumResultVo.Fail.getIndex()) failCount++;
//                    else if(result.getCode() == EnumResultVo.SUCCESS.getIndex()) addCount++;
//                }

                } else {
                    return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "请求API错误：" + resultObj.getString("sub_msg"));
                }

            }else{
                return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "接口服务器连接异常");
            }
        } catch (Exception e) {
            return ApiResultVo.error(ApiResultVoEnum.Fail.getIndex(), "系统异常：" + e.getMessage());
        }

    }

    /**
     * 订单发货
     * @param req
     * @return
     */
//    @RequestMapping(value = "/send_order", method = RequestMethod.POST)
//    public ApiResult<Integer> orderSend(@RequestBody DataRow req){
//        if(StringUtils.isEmpty(req.get("orderId")))return new ApiResult<>(EnumResultVo.ParamsError.getIndex(),"参数错误，订单id不能为空");
//        if(StringUtils.isEmpty(req.get("code")))return new ApiResult<>(EnumResultVo.ParamsError.getIndex(),"参数错误，快递单号不能为空");
//        String orderId=req.getString("orderId");
//        Integer shopId=8;
//        var shop = shopService.getShop(shopId);
//        String appKey = shop.getAppkey();
//        String appSercet = shop.getAppSercet();
//        String method = "order.logisticsAdd";
//        LinkedHashMap<String, Object> jsonMap =new LinkedHashMap<>();
//        jsonMap.put("company","韵达快递");//快递单号
//        jsonMap.put("logistics_code",req.getString("code"));//快递单号
//        jsonMap.put("logistics_id","9");//快递公司id
//        jsonMap.put("order_id",orderId);//订单id
//
//        JSONObject jsonObject = new JSONObject(true);
//        jsonObject.putAll(jsonMap);
//
//        String paramJson =jsonObject.toJSONString();
//        System.out.println(paramJson);
//        String timestamp = DateUtil.dateToString(new Date(),"yyyy/MM/dd HH:mm:ss");
//
//        String signStr = "app_key"+appKey+"method"+method+"param_json"+paramJson+"timestamp"+timestamp+"v"+"1";
//        signStr = appSercet+signStr+appSercet;
//
//        String sign = MD5Utils.MD5Encode(signStr);
//
//        String  sendUrl= "https://openapi.jinritemai.com/order/logisticsAdd";
//
//        Map<String, String> params = new HashMap<>();
//        params.put("app_key", appKey);
//        params.put("method", method);
//        params.put("param_json",paramJson);
//        params.put("timestamp", timestamp);
//        params.put("v", "1");
//        params.put("sign", sign);
//
//        try {
//            HttpResponse<String> response = ExpressClient.doPost(sendUrl, map2Url(params));
//            if (response.statusCode() == 200) {
//                JSONObject obj = JSONObject.parseObject(response.body());
//                if(obj.getString("message").equals("success")){
//                    douyinOrderService.sendDouyinOrder(orderId);
//                }
//            }
//        } catch (Exception e) {
//            return new ApiResult<>(EnumResultVo.Fail.getIndex(), "系统异常："+e.getMessage());
//        }
//        return new ApiResult<>(EnumResultVo.SUCCESS.getIndex(), "SUCCESS");
//
//    }


}
