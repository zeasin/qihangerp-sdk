package cn.qihangerp.open.xhs;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.MD5Utils;
import cn.qihangerp.open.common.OkHttpClientHelper;
import cn.qihangerp.open.xhs.response.ExpressCompanyInfo;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
public class xhsExpressApiHelper {

    public static ApiResultVo<ExpressCompanyInfo> getExpressCompanyList(String appId,String appSecret,String accessToken) throws IOException {
        String listResult = getExpressCompanyListStr(appId,appSecret,accessToken);
        if(StringUtils.hasText(listResult)){
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if(jsonObject.getBoolean("success")) {
                log.info("==========获取小红书物流公司成功=============");
                JSONObject data = jsonObject.getJSONObject("data");
                List<ExpressCompanyInfo> list = data.getList("expressCompanyInfos", ExpressCompanyInfo.class);
                return ApiResultVo.success(list.size(),list);
            }
            else {
                return ApiResultVo.error(jsonObject.getString("error_msg"));
            }
        }else{
            return ApiResultVo.error("获取小红书物流公司失败");
        }
    }
    protected static String getExpressCompanyListStr(String appId,String appSecret,String accessToken) throws IOException {
        String serverUrl = "https://ark.xiaohongshu.com/ark/open_api/v3/common_controller";
        String method = "common.getExpressCompanyList";
        Long time = System.currentTimeMillis()/ 1000;
        Map<String, String> params = new HashMap<>();
        params.put("appId", appId);
        params.put("version","2.0");
        params.put("timestamp", time.toString());
        params.put("accessToken", accessToken);
        params.put("method", method);

        String signString = method+"?appId="+appId+"&timestamp="+time+"&version="+"2.0"+appSecret;
        String sign = MD5Utils.MD5Encode(signString);
        params.put("sign", sign);

        // 主体字段
//        params.put("pageNo", pageNo+"");
//        params.put("pageSize", pageSize+"");
//        params.put("searchParam", "");


        // 调用接口
//        PddOrderApiService remoting = RemoteUtil.Remoting(url, PddOrderApiService.class);
        String jsonString = JSONObject.toJSONString(params);
//        String result = remoting.getOrderList(jsonString);
//        return result;
//        HttpResponse<String> stringHttpResponse = HttpUtils.doPost(url, jsonString);
//        return stringHttpResponse.body();
        String result =  OkHttpClientHelper.post(serverUrl, jsonString);
//        log.info("========请求小红书结果：{}",result);
        return result;
    }


}
