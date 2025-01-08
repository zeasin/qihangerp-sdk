package cn.qihangerp.open.jd;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.jd.response.JdGoodsSkuListResponse;
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
import java.util.*;

public class JdGoodsApiHelper {
    private static Logger log = LoggerFactory.getLogger(JdGoodsApiHelper.class);

    private static final String GOODS_FIELDS = "jdPrice,wareId,title,spuId,images,itemNum,outerId,logo,weight,width,height,length,modified,created,offlineTime,onlineTime,mobileDesc,afterSales,marketPrice,costPrice,brandName,stockNum,sellPoint,afterSaleDesc,categoryId";
    private static final String SKU_FIELDS ="wareId,skuId,status,saleAttrs,jdPrice,outerId,logo,skuName,wareTitle,modified,created";

    protected static String pullGoodsSkuList(Integer pageNo,Integer pageSize,String appKey,String appSecret,String accessToken){
        String url="https://api.jd.com/routerjson";

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("access_token", accessToken);
        params.put("format", "json");
        params.put("method", "jingdong.sku.read.searchSkuList");
        params.put("v", "2.0");
        params.put("timestamp", DateUtil.getCurrentDateTime());
        try {
            Map<String, Object> pmap = new TreeMap();
            pmap.put("skuStatuValue", new Integer[]{1});
            pmap.put("page", pageNo);
            pmap.put("page_size", pageSize);
            pmap.put("field", SKU_FIELDS);
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
    public static ApiResultVo<JdGoodsSkuListResponse> pullGoodsSkuList(String appKey, String appSecret, String accessToken) {
        Integer page = 1;
        Integer pageSize = 50;
        // 拉取接口
        String result = pullGoodsSkuList(1, pageSize, appKey, appSecret, accessToken);
        List<JdGoodsSkuListResponse> skusList = new ArrayList<>();
        if (!StringUtils.hasText(result)) return ApiResultVo.error(ApiResultVoEnum.ApiException, "接口请求错误");

        JSONObject jsonObject = JSONObject.parseObject(result);
        if (jsonObject.get("error_response") != null) return ApiResultVo.error(jsonObject.getJSONObject("error_response").getInteger("code"), jsonObject.getJSONObject("error_response").getString("zh_desc"));
        if ("0".equals(jsonObject.getJSONObject("jingdong_sku_read_searchSkuList_responce").getString("code"))) {
            JSONObject skuListResult = jsonObject.getJSONObject("jingdong_sku_read_searchSkuList_responce").getJSONObject("page");
            Integer totalItem = skuListResult.getInteger("totalItem");

            if (totalItem != null && totalItem > 0) {
                //计算分页
                int totalPage = (totalItem % pageSize == 0) ? totalItem / pageSize.intValue() : (totalItem / pageSize.intValue()) + 1;

                // 获取结果
//                    JSONArray skuList = skuListResult.getJSONArray("data");
//                    for(Object sku :skuList){
//                        GoodsSku goodsSku = JSONObject.parseObject(JSONObject.toJSONString(sku), GoodsSku.class);
//                        goodsSku.setAttrs("");
//                    }
//                    String s = JSONObject.toJSONString(skuList.get(49));
                skusList.addAll(jsonObject.getJSONObject("jingdong_sku_read_searchSkuList_responce").getJSONObject("page").getList("data", JdGoodsSkuListResponse.class));
                if (totalItem > pageSize) {
                    while (totalPage > page) {
                        page++;
                        String result1 = pullGoodsSkuList(page, pageSize, appKey, appSecret, accessToken);
                        if (StringUtils.hasText(result1)) {
                            JSONObject jsonObject1 = JSONObject.parseObject(result1);
                            if ("0".equals(jsonObject1.getJSONObject("jingdong_sku_read_searchSkuList_responce").getString("code"))) {
                                skusList.addAll(jsonObject1.getJSONObject("jingdong_sku_read_searchSkuList_responce").getJSONObject("page").getList("data", JdGoodsSkuListResponse.class));
                            }
                        }
                    }
                }
            }
        }

        return ApiResultVo.success(skusList.size(), skusList);
    }



   }
