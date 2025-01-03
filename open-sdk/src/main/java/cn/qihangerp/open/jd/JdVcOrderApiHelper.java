package cn.qihangerp.open.jd;

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

public class JdVcOrderApiHelper {
    protected static String pullVcOrderList(Integer pageIndex,Integer pageSize,String appKey,String appSecret,String accessToken){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.dropship.dps.searchAllOrders");
        params.put("v", "2.0");
//        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("timestamp", "2024-05-29 11:54:00");
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("beginDate", "2024-05-09 00:00:00");
            pmap.put("endDate", "2024-06-03 11:23:30");
            pmap.put("page", pageIndex);
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
             * {"jingdong_vc_item_products_find_responce":{"code":"0","jos_result_dto":{"result":[{"modify_time":1716962958000,"ware_name":"曲美家居（QM）沙发 真皮沙发头层牛皮大小户型直排-四人位-2.7m 砂砾白","is_gaea":0,"ware_id":"100085057003","is_primary":1,"sale_state":1},{"modify_time":1716956708000,"ware_name":"曲美家居（QM）弯曲木真皮床软床1.5*2.0m 砂砾白双人床","is_gaea":0,"ware_id":"100091911338","is_primary":1,"sale_state":1},{"modify_time":1716956708000,"ware_name":"曲美家居（QM）弯曲木真皮床框架床1.5*2.0m 烟雨灰双人床","is_gaea":0,"ware_id":"100085057005","is_primary":1,"sale_state":1},{"modify_time":1716956708000,"ware_name":"曲美家居（QM）双人床 弯曲木皮床实木卧室婚床1.8*2.0m 砂砾白","is_gaea":0,"ware_id":"100085056997","is_primary":1,"sale_state":1},{"modify_time":1716956708000,"ware_name":"曲美家居（QM）弯曲木真皮床实木床1.8*2.0m 烟雨灰双人床","is_gaea":0,"ware_id":"100085056995","is_primary":1,"sale_state":1},{"modify_time":1716956707000,"ware_name":"曲美家居（QM）餐桌椅 弯曲木餐桌长方形140cm 一桌四椅戈尔浅胡桃+深灰色","is_gaea":0,"ware_id":"100091911390","is_primary":1,"sale_state":1},{"modify_time":1716956707000,"ware_name":"曲美家居（QM）餐桌椅 弯曲木餐桌长方形140cm 一桌四椅合观胡桃+深灰色","is_gaea":0,"ware_id":"100091911388","is_primary":1,"sale_state":1},{"modify_time":1716956707000,"ware_name":"曲美家居（QM）餐桌椅 弯曲木餐桌长方形140cm 一桌四椅戈尔浅胡桃+奶油白","is_gaea":0,"ware_id":"100091911386","is_primary":1,"sale_state":1},{"modify_time":1716956707000,"ware_name":"曲美家居（QM）餐桌椅 弯曲木餐桌长方形140cm 一桌四椅合观胡桃+奶油白","is_gaea":0,"ware_id":"100091911366","is_primary":1,"sale_state":1},{"modify_time":1716956707000,"ware_name":"曲美家居床头柜 弯曲木白石纹板胡桃色储物柜","is_gaea":0,"ware_id":"100079179856","is_primary":1,"sale_state":1},{"modify_time":1716956706000,"ware_name":"曲美家居（QM）沙发 真皮沙发客厅直排头层牛皮-三人位-2.2m 砂砾白","is_gaea":0,"ware_id":"100086010289","is_primary":1,"sale_state":1},{"modify_time":1716956706000,"ware_name":"曲美家居（QM）沙发 皮沙发头层牛皮客厅直排-三人位-2.2m 烟雨灰","is_gaea":0,"ware_id":"100086010257","is_primary":1,"sale_state":1},{"modify_time":1716956099000,"ware_name":"曲美家居（QM）床 皮艺床卧室大床意式简约单人床1.5*2米","is_gaea":0,"ware_id":"100109940874","is_primary":1,"sale_state":1},{"modify_time":1716886154000,"ware_name":"曲美家居床 皮艺床实木框架双人床1.5*2.0m","is_gaea":0,"ware_id":"100079454246","is_primary":1,"sale_state":0},{"modify_time":1716886151000,"ware_name":"曲美家居床 真皮床 实木框架卧室皮艺大床1.5*2.0m双人床","is_gaea":0,"ware_id":"100079179884","is_primary":1,"sale_state":1},{"modify_time":1716886149000,"ware_name":"曲美家居床头柜 奶油白双大抽屉卧室储物柜","is_gaea":0,"ware_id":"100079179882","is_primary":1,"sale_state":0},{"modify_time":1716886144000,"ware_name":"曲美家居乳胶床垫 黄麻床垫 小口径独立袋弹簧26cm厚软硬双面床垫1.5*2.0m","is_gaea":0,"ware_id":"100078688188","is_primary":1,"sale_state":1},{"modify_time":1716886142000,"ware_name":"曲美家居乳胶床垫 软硬双面黄麻床垫厚26cm 双人床垫 独立袋弹簧1.8*2.0m","is_gaea":0,"ware_id":"100078688172","is_primary":1,"sale_state":1},{"modify_time":1716886139000,"ware_name":"曲美家居床 皮床实木床意式极简卧室大床-优雅驼 1.5*2.0m单人床","is_gaea":0,"ware_id":"100078688166","is_primary":1,"sale_state":0},{"modify_time":1716886136000,"ware_name":"曲美家居双人床  皮床实木床意式极简风卧室大床-优雅驼 1.8*2.0m","is_gaea":0,"ware_id":"100078688148","is_primary":1,"sale_state":1}],"return_code":"100","is_success":true,"count":37,"return_message":"执行成功"}}}
             */
            return result;
        }catch (Exception e){
            return "";
        }
    }
}
