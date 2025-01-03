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

public class JdVcReturnApiHelper {

    protected static String pullReturnList(Integer pageNo,Integer pageSize,String appKey,String appSecret,String accessToken){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.vc.return.order.list.page.get");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
//        params.put("timestamp", "2024-05-29 11:06:00");
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("createDateBegin", "2024-05-12 00:00:00");
            pmap.put("createDateEnd", "2024-05-12 23:59:59");
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
             * {"jingdong_vc_return_order_list_page_get_responce":{"code":"0","roResultDto":{"pageIndex":1,"roDtoList":[{"fromDeliverCenterName":"北京","providerCode":"hzqmjj","wareVariety":1,"totalPrice":2944.0000,"wareHouseContact":"王子乐","toDeliverCenterName":"北京","returnStateName":"其它等待结算(已完成)","balanceStateName":"未结算","wareHouseAddress":"北京市顺义区南彩镇陈马路宏森木业","stockName":"厂直发票虚拟仓","wareHouseCell":"","totalNum":1,"returnId":66663875,"providerName":"杭州曲美家居有限公司","createDate":1715492442000}],"recordCount":1,"pageSize":10}}}
             */
            pullReturnDetail("66663875",appKey,appSecret,accessToken);
            return result;
        }catch (Exception e){
            return "";
        }
    }
    protected static String pullReturnDetail(String returnId,String appKey,String appSecret,String accessToken){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.vc.get.return.order.detail");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
//        params.put("timestamp", "2024-05-29 11:06:00");
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("returnId", returnId);

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
             * {"jingdong_vc_get_return_order_detail_responce":{"code":"0","detailResultDto":{"fromDeliverCenterName":"北京","providerCode":"hzqmjj","wareVariety":1,"totalPrice":2944.0000,"toDeliverCenterName":"北京","detailDtoList":[{"factNum":1,"returnsNum":1,"brandName":"曲美家居（QM）","wareId":100058374484,"totalPrice":2944.0000,"bizCode":"1740471823","isbn":"100058374484","returnsPrice":2944.0000,"discount":0,"wareName":"曲美家居（QM）双人床 皮床现代主卧皮艺床1.8*2m","makePrice":0.00}],"balanceState":0,"balanceStateName":"未结算","totalNum":1,"returnId":66663875,"providerName":"杭州曲美家居有限公司","createDate":1715492442000}}}
             */
            return result;
        }catch (Exception e){
            return "";
        }
    }
}
