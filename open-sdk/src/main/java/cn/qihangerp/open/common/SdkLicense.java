package cn.qihangerp.open.common;

import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class SdkLicense {
    @PostConstruct
    public void init() throws IOException {
        String uniqueID = UniqueIDGenerator.generateUniqueID();
        System.out.println("Generated Unique ID: " + uniqueID);
        ExpressClient.getLicenseSdk(uniqueID);
    }
}
