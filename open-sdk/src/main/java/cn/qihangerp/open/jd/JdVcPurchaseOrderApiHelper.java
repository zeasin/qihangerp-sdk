package cn.qihangerp.open.jd;

import cn.qihangerp.open.common.DateUtil;
import cn.qihangerp.open.common.SignUtil;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.StringJoiner;
import java.util.TreeMap;

public class JdVcPurchaseOrderApiHelper {

    protected static String pullPurchaseOrderItem(String orderId,String appKey,String appSecret,String accessToken){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.vc.getdetailbyorderid");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
//        params.put("timestamp", "2024-05-29 11:54:00");
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("order_id", orderId);
            pmap.put("is_page", false);


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
                .header("Content-Type", "application/json")
                .GET()
                .build();
        try {
            HttpResponse<String> send = client.send(request, HttpResponse.BodyHandlers.ofString());
            String result = send.body();
            /**
             * {"jingdong_vc_getdetailbyorderid_responce":{"code":"0","jos_detail_result_dto":{"order_id":1776972492,"purchase_allocation_detail_list":[{"original_num":1,"order_id":1776972492,"purchase_price":999.0000,"ware_name":"曲美家居（QM）床垫 乳胶床垫 独立袋弹簧床垫1.5*2米","deliver_center_name":"北京","confirm_num":1,"deliver_center_id":6,"store_name":"厂直发票虚拟仓","actual_num":1,"ware_id":100059710381,"totoal_price":999.0000,"store_id":99}],"success":true,"record_count":1,"result_code":"200","result_message":"成功"}}}
             */
            return result;
        }catch (Exception e){
            return "";
        }
    }

    protected static String  pullPurchaseOrderList(Integer pageNo,Integer pageSize,String appKey,String appSecret,String accessToken){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.vc.getpurchaseorderlist");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
//        params.put("timestamp", "2024-05-29 11:54:00");
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("created_date_start", "2024-05-28 00:00:00");
            pmap.put("created_date_end", "2024-05-28 23:59:59");
            pmap.put("pageIndex", pageNo);
            pmap.put("pageSize", pageSize);

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
                .header("Content-Type", "application/json")
                .GET()
                .build();
        try {
            HttpResponse<String> send = client.send(request, HttpResponse.BodyHandlers.ofString());
            String result = send.body();
            /**
             * {"jingdong_vc_getpurchaseorderlist_responce":{"code":"0","jos_order_result_dto":{"purchase_order_list":[{"order_type":2,"provider_code":"hzqmjj","order_id":1776972492,"account_period":60,"is_exist_actual_num_dif":0,"complete_date":1716884499000,"state_name":"已完成","state":3,"provider_name":"杭州曲美家居有限公司","balance_status":false,"purchaser_name":"胡穆","warehouse_phone":"18301512192","status":1,"update_date":1716884499000,"ware_variety":1,"total_price":999.0000,"deliver_center_name":"北京","deliver_center_id":6,"status_name":"未删除","purchaser_erp_code":"humu","tc_flag_name":"否","address":"北京市顺义区南彩镇陈马路宏森木业","receiver_name":"王子乐","confirm_state":0,"custom_order_id":293431954129,"order_attribute_name":"无","order_type_name":"厂商直送","is_can_confirm":false,"created_date":1716884499000,"tc_flag":0,"confirm_state_name":"未回告","order_attribute":0},{"order_type":2,"provider_code":"hzqmjj","order_id":1776970394,"account_period":60,"is_exist_actual_num_dif":0,"complete_date":1716884440000,"state_name":"已完成","state":3,"provider_name":"杭州曲美家居有限公司","balance_status":false,"purchaser_name":"胡穆","warehouse_phone":"18301512192","status":1,"update_date":1716884440000,"ware_variety":1,"total_price":1891.0000,"deliver_center_name":"北京","deliver_center_id":6,"status_name":"未删除","purchaser_erp_code":"humu","tc_flag_name":"否","address":"北京市顺义区南彩镇陈马路宏森木业","receiver_name":"王子乐","confirm_state":0,"custom_order_id":293297427417,"order_attribute_name":"无","order_type_name":"厂商直送","is_can_confirm":false,"created_date":1716884440000,"tc_flag":0,"confirm_state_name":"未回告","order_attribute":0}],"success":true,"record_count":2,"result_code":"200","result_message":"成功"}}}
             */
            pullPurchaseOrderItem("1776972492",appKey,appSecret,accessToken);
            return result;
        }catch (Exception e){
            return "";
        }
    }
}
