package cn.qihangerp.open;

import cn.qihangerp.common.http.OkHttpClientHelper;
import cn.qihangerp.common.utils.UniqueIDGenerator;
import com.alibaba.fastjson2.JSONObject;
import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class ApiInit {
    @PostConstruct
    public void init() throws IOException {
        String uniqueID = UniqueIDGenerator.generateUniqueID();
        System.out.println("Generated Unique ID: " + uniqueID);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("uuid", uniqueID);
        jsonObject.put("time", System.currentTimeMillis()/1000);
        OkHttpClientHelper.post("http://qihangerp.cn:8088/license/getLicense", JSONObject.toJSONString(jsonObject));
    }
}
