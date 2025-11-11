package cn.qihangerp.open.kwai;



import cn.qihangerp.open.common.*;
import cn.qihangerp.open.kwai.model.KwaiGoodsItem;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.*;

public class KwaiGoodsApiHelper {


    public static ApiResultVo<KwaiGoodsItem> pullGoodsAll(String appKey,String appSecret,String signSecret,String token) throws IOException {
        //https://open.kwaixiaodian.com/oauth/authorize?appId=ks700872692254768517&redirect_uri=xxx&scope=xxx&response_type=code&state=xxx
        Integer pageNumber = 1;
        JSONObject result = pullGoodsList(pageNumber,appKey,appSecret,signSecret,token);
        List<KwaiGoodsItem> goodsList = new ArrayList<>();

        if (result.getInteger("result") == 1) {
            // 成功
            Map<String,Object> data = (LinkedHashMap) result.get("data");
            Integer totalPage = Integer.parseInt(data.get("totalPage").toString());
            List<KwaiGoodsItem> items = JSONArray.parseArray(JSONObject.toJSONString(data.get("items")), KwaiGoodsItem.class);
            if(items!=null && items.size()>0) {
                goodsList.addAll(items);
            }

            while (totalPage>pageNumber) {
                try {
                    pageNumber++;
                    JSONObject result1 = pullGoodsList(pageNumber, appKey, appSecret, signSecret, token);
                    if (result1.getInteger("result") == 1) {
                        Map<String, Object> data1 = (LinkedHashMap) result1.get("data");
                        List<KwaiGoodsItem> items1 = JSONArray.parseArray(JSONObject.toJSONString(data1.get("items")), KwaiGoodsItem.class);
                        if (items1 != null && items1.size() > 0) {
                            goodsList.addAll(items1);
                        }
                    }
                }catch (Exception e){
                }
            }
            return ApiResultVo.success(goodsList);
        } else {
            // 失败
            return ApiResultVo.error(result.getInteger("result"), result.getString("error_msg"));
        }
    }
    protected static JSONObject pullGoodsList(Integer pageNumber,String appKey ,String appSecret,String signSecret,String token ) throws IOException {
        String serverUrl = "https://openapi.kwaixiaodian.com";
        Map<String, String> params = new HashMap<>();
        params.put("appkey", appKey);
//        params.put("version", "1");
        params.put("access_token", token);
//        params.put("timestamp", "1714528708000");
        params.put("method", "open.item.list.get");
//        params.put("signMethod", SignMethodEnum.MD5.toString());

        Map<String, Object> p = new HashMap<>();
        p.put("pageNumber", pageNumber);
        p.put("pageSize", 10);
        String jsonString = JSONObject.toJSONString(p);
        params.put("param", jsonString);
        try {
            String signParam = SignUtils.sign(params, signSecret, SignMethodEnum.MD5);
            params.put("sign", signParam);
        } catch (Exception e) {
            e.printStackTrace();
        }

        serverUrl += "/open/item/list/get";
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> joiner.add(key + "=" + URLEncoder.encode(value)));
        String urlP = joiner.toString();
        serverUrl = serverUrl + "?" + urlP;

        // 调用接口
//        KwaiGoodsApiService remoting = RemoteUtil.Remoting(serverUrl, KwaiGoodsApiService.class);
//        JSONObject resultString = remoting.getGoodsList(params);
//        JSONObject result = remoting.getGoodsList(params);
//        return result;

//        String resultString = HttpUtils.doGet(serverUrl);
        String resultString = OkHttpClientHelper.get(serverUrl);
        return JSONObject.parseObject(resultString);
    }




}
