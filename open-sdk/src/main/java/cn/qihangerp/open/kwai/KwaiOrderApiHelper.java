package cn.qihangerp.open.kwai;



import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.HttpUtils;
import cn.qihangerp.open.kwai.service.KwaiOrderApiService;
import cn.qihangerp.open.common.SignMethodEnum;
import cn.qihangerp.open.common.SignUtils;
import com.alibaba.fastjson2.JSONObject;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class KwaiOrderApiHelper {


    protected static ApiResultVo<Object> pullOrderList() {
        String serverUrl = "https://openapi.kwaixiaodian.com";
        String appKey = "ks700872692254768517";
        String appSecret = "7Bmb4KSuo3SB9sX7JNUETQ";
        String signSecret = "b690afccbefc07697782cad097e51e40";
        String token = "ChFvYXV0aC5hY2Nlc3NUb2tlbhJAEZN0T9CpVhcixWeOK0LvgZfGbBXIxTnM9gxUzRa8KZbtn-IDlxNmLbj9C0DTMJw5oKZ9myvDWCaPhuviDJghXRoSj7CN238WSuq-kBNyCQnaCfBmIiClKfC1257w4i6kA7dxZfxz8XR3Aiwxd-8VZH9ioydPICgFMAE";
        Map<String, String> params = new HashMap<>();
        params.put("appkey", appKey);
//        params.put("version", "1");
        params.put("access_token", token);
//        params.put("timestamp", "1714528708000");
        params.put("method", "open.item.list.get");
//        params.put("signMethod", SignMethodEnum.MD5.toString());
//        params.put("param","{}");
        Map<String, Object> p = new HashMap<>();
        p.put("orderViewStatus", 1);
        p.put("pageSize", 50);
        p.put("queryType", 2);
        p.put("beginTime", "1714060800000");
        p.put("endTime", "1714528708000");
        p.put("cursor", "");
        String jsonString = JSONObject.toJSONString(p);
//
//        OpenOrderCursorListRequest.ParamDTO paramDTO = new OpenOrderCursorListRequest.ParamDTO();
//        paramDTO.setOrderViewStatus(1);
//        paramDTO.setPageSize(1);
////        paramDTO.setSort(this.sort);
//        paramDTO.setQueryType(2);
//        paramDTO.setBeginTime(1709222400000L);
//        paramDTO.setEndTime(1714297996000L);
//        paramDTO.setCpsType(1);
//        paramDTO.setCursor("");
//        params.put("param", GsonUtils.toJSON(paramDTO));

//        String json = GsonUtils.toJSON(p);

        params.put("param", jsonString);
        try {
            String signParam = SignUtils.sign(params, signSecret, SignMethodEnum.MD5);
            params.put("sign", signParam);
        } catch (Exception e) {
            e.printStackTrace();
            return ApiResultVo.error(500,"签名失败");
        }



        // 调用接口
//        KwaiOrderApiService remoting = RemoteUtil.Remoting(serverUrl, KwaiOrderApiService.class);
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
//        JSONObject result = remoting.getOrderList(params);
        JSONObject result = new JSONObject();
        if (result.getInteger("result") == 1) {
            // 成功
            Map<String,Object> data = (LinkedHashMap) result.get("data");
            String cursor = data.get("cursor").toString();
            Object o = data.get("orderList");
            if (cursor.equals("no")) {

            }
            return ApiResultVo.success(o);
        } else {
            // 失败
            return ApiResultVo.error(result.getInteger("result"), result.getString("error_msg"));
        }

    }
}
