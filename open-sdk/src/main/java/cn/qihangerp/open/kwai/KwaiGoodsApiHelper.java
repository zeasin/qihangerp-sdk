package cn.qihangerp.open.kwai;



import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.kwai.model.KwaiGoodsItem;
import cn.qihangerp.open.kwai.service.KwaiGoodsApiService;
import cn.qihangerp.open.common.RemoteUtil;
import cn.qihangerp.open.common.SignMethodEnum;
import cn.qihangerp.open.common.SignUtils;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;

import java.util.*;

public class KwaiGoodsApiHelper {


    public static ApiResultVo<KwaiGoodsItem> pullGoodsAll(){
        String appKey = "ks700872692254768517";
        String appSecret = "7Bmb4KSuo3SB9sX7JNUETQ";
        String signSecret = "b690afccbefc07697782cad097e51e40";
        String token = "ChFvYXV0aC5hY2Nlc3NUb2tlbhJAEZN0T9CpVhcixWeOK0LvgZfGbBXIxTnM9gxUzRa8KZbtn-IDlxNmLbj9C0DTMJw5oKZ9myvDWCaPhuviDJghXRoSj7CN238WSuq-kBNyCQnaCfBmIiClKfC1257w4i6kA7dxZfxz8XR3Aiwxd-8VZH9ioydPICgFMAE";
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
    protected static JSONObject pullGoodsList(Integer pageNumber,String appKey ,String appSecret,String signSecret,String token ) {
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


        // 调用接口
        KwaiGoodsApiService remoting = RemoteUtil.Remoting(serverUrl, KwaiGoodsApiService.class);
//        JSONObject resultString = remoting.getGoodsList(params);
        JSONObject result = remoting.getGoodsList(params);
        return result;
    }




}
