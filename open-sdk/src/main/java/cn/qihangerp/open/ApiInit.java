package cn.qihangerp.open;

import cn.qihangerp.common.http.ExpressClient;
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
        ExpressClient.getLicenseSdk(uniqueID);
    }
}
