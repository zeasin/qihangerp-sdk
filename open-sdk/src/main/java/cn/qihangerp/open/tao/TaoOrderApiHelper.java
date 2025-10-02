package cn.qihangerp.open.tao;

import cn.qihangerp.open.common.*;
import cn.qihangerp.open.tao.response.TaoOrderDetailResponse;
import cn.qihangerp.open.tao.model.TradeItem;
import cn.qihangerp.open.tao.response.TaoOrderListResponse;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.springframework.util.StringUtils;
import java.io.IOException;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class TaoOrderApiHelper {

    private static final String ORDER_List_FIELDS = "tid,receiver_name,receiver_country,receiver_state,receiver_city,receiver_district,receiver_town,receiver_address," +
            "receiver_mobile,receiver_phone,title,seller_flag,has_buyer_message,credit_card_fee,mark_desc,consign_time,end_time,sid,yfx_fee,has_yfx" +
            ",type,status,orders,rx_audit_status,seller_memo,buyer_memo,buyer_message,pay_time,created,modified,buyer_nick,buyer_open_uid" +
            ",alipay_no,buyer_alipay_no,buyer_email,num_iid,num,price,total_fee,adjust_fee,post_fee,discount_fee,payment,received_payment" +
            ",available_confirm_fee,commission_fee,oaid,promotion_details,tmall_coupon_fee,logistics_company,invoice_no";
    private static final String ORDER_DETAIL_FIELDS = "tid,receiver_name,receiver_country,receiver_state,receiver_city,receiver_district,receiver_town,receiver_address," +
            "receiver_mobile,receiver_phone,title,seller_flag,has_buyer_message,credit_card_fee,mark_desc,consign_time,end_time,sid,yfx_fee,has_yfx" +
            ",type,status,orders,rx_audit_status,seller_memo,buyer_memo,buyer_message,pay_time,created,modified,buyer_nick,buyer_open_uid" +
            ",alipay_no,buyer_alipay_no,buyer_email,num_iid,num,price,total_fee,adjust_fee,post_fee,discount_fee,payment,received_payment" +
            ",available_confirm_fee,commission_fee,oaid,promotion_details,tmall_coupon_fee,logistics_infos,LogisticsInfos,logistics_company,invoice_no";
    /**
     * 更新订单（循环分页）
     *
     * @param appKey
     * @param appSecret
     * @param sessionKey
     * @return
     */
    public static ApiResultVo<TaoOrderListResponse> pullTradeList(LocalDateTime startModified, LocalDateTime endModified , String appKey, String appSecret, String sessionKey) throws IOException {
        Integer pageNo = 1;
        String resultString = pullOrderList(startModified, endModified, pageNo, appKey, appSecret, sessionKey);
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("trades_sold_increment_get_response");
            Boolean hasNext = (Boolean) dataResult.get("has_next");
            JSONObject orderListResult = (JSONObject) dataResult.get("trades");
            //组合的订单列表
            List<TaoOrderListResponse> tradeBeans = new ArrayList<>();
            if (orderListResult != null) {
                for (Object item : (JSONArray) orderListResult.get("trade")) {

                    TaoOrderListResponse tradeBean = JSONObject.parseObject(item.toString(), TaoOrderListResponse.class);
                    // 转换orders
                    JSONObject s = (JSONObject) item;
                    JSONObject ss = (JSONObject) s.get("orders");
                    List<TradeItem> orders = JSONArray.parseArray(ss.get("order").toString(), TradeItem.class);
                    tradeBean.setOrders(orders);
                    tradeBeans.add(tradeBean);
                }
                //循环取下一页
                while (hasNext) {
                    pageNo++;
                    String resultString1 = pullOrderList(startModified, endModified, pageNo, appKey, appSecret, sessionKey);
                    JSONObject result1 = JSONObject.parseObject(resultString1);
                    //没有错误
                    JSONObject dataResult1 = (JSONObject) result1.get("trades_sold_increment_get_response");
                    hasNext = (Boolean) dataResult1.get("has_next");
                    JSONObject orderListResult1 = (JSONObject) dataResult1.get("trades");
                    if (orderListResult1 != null) {
                        for (Object item : (JSONArray) orderListResult1.get("trade")) {
//                            String s = JSONObject.toJSONString(item);
                            TaoOrderListResponse tradeBean = JSONObject.parseObject(JSONObject.toJSONString(item), TaoOrderListResponse.class);
                            // 转换orders
                            JSONObject s = (JSONObject) item;
                            JSONObject ss = (JSONObject) s.get("orders");
                            List<TradeItem> orders = JSONArray.parseArray(ss.get("order").toString(), TradeItem.class);
                            tradeBean.setOrders(orders);
                            tradeBeans.add(tradeBean);
                        }
                    }
                }
//                return new PullResult(tradeBeans.size(), tradeBeans);
                return ApiResultVo.success(tradeBeans.size(), tradeBeans);
            } else {
//                return new PullResult(0, tradeBeans);
                return ApiResultVo.success(0, tradeBeans);
            }

        } else {
            // 有错误
            JSONObject errorInfo = (JSONObject) result.get("error_response");
            if (errorInfo.get("code").toString().equals("27")) {
                // SessionKey非法
                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(), errorInfo.get("sub_msg").toString());
            } else if (errorInfo.get("code").toString().equals("25")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名错误，有可能是appSecret错了");
            } else if (errorInfo.get("code").toString().equals("29")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "错误的AppKey");
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("sub_msg").toString());
            }
        }

    }

    protected static String pullOrderList(LocalDateTime startModified,LocalDateTime endModified,Integer pageNo,String appKey, String appSecret, String sessionKey) throws IOException {
        String url = "https://api.taobao.com/router/rest"; // 淘宝API的URL
        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
//        String format = LocalDateTime.now().format(df);
        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", "taobao.trades.sold.increment.get");
        params.put("v", "2.0");
        params.put("session", sessionKey);
        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("format", "json");
        params.put("sign_method", "md5");
        params.put("start_modified", startModified.format(df));
        params.put("end_modified", endModified.format(df));
        params.put("page_no", pageNo.toString());
        params.put("fields", ORDER_List_FIELDS);
        params.put("use_has_next", "true");
        params.put("page_size", "40");
        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        }catch (Exception e){
            return "";//签名错误
        }
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> joiner.add(key + "=" + URLEncoder.encode(value)));
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
//        TaoOrderApiService remoting = RemoteUtil.Remoting(url, TaoOrderApiService.class);
//        return remoting.getOrderList();
//        String resultString = HttpUtils.doGet(url);
        String resultString = OkHttpClientHelper.get(url);
        return resultString;
    }

    /**
     * 获取详情
     * @param tid
     * @param appKey
     * @param appSecret
     * @param sessionKey
     * @return
     * @throws
     */
    public static ApiResultVo<TaoOrderDetailResponse> pullOrderDetail(String tid, String appKey, String appSecret, String sessionKey) throws IOException {
        String url = "https://api.taobao.com/router/rest"; // 淘宝API的URL
        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", "taobao.trade.fullinfo.get");
        params.put("v", "2.0");
        params.put("session", sessionKey);
        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("format", "json");
        params.put("sign_method", "md5");
        params.put("fields", ORDER_DETAIL_FIELDS);
        params.put("tid", tid);
        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        }catch (Exception e){
            e.printStackTrace();
        }
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> joiner.add(key + "=" + URLEncoder.encode(value)));
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
//        TaoOrderApiService remoting = RemoteUtil.Remoting(url, TaoOrderApiService.class);
//        String resultString = remoting.getOrderDetail();
//        String resultString = HttpUtils.doGet(url);
        String resultString = OkHttpClientHelper.get(url);

        JSONObject result = JSONObject.parseObject(resultString);
        if(result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult1 =result.getJSONObject("trade_fullinfo_get_response");

            JSONObject orderResult =  dataResult1.getJSONObject("trade");
            if (!orderResult.isEmpty()) {
                TaoOrderDetailResponse detail = JSONObject.parseObject(orderResult.toJSONString(), TaoOrderDetailResponse.class);

                return ApiResultVo.success(detail);
            }
        }else {
            // 有错误
            JSONObject errorInfo = (JSONObject) result.get("error_response");
            if (errorInfo.get("code").toString().equals("27")) {
                // SessionKey非法
                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(), errorInfo.get("sub_msg").toString());
            } else if (errorInfo.get("code").toString().equals("25")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名错误，有可能是appSecret错了");
            } else if (errorInfo.get("code").toString().equals("29")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "错误的AppKey");
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("sub_msg").toString());
            }
        }
        return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "未知错误");
    }


}
