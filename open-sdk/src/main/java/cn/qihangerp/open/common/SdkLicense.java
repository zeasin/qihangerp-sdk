package cn.qihangerp.open.common;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import java.io.IOException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@Component
public class SdkLicense {
    @Value("${spring.application.name:open-api-sdk}")
    private String appName;
    @Value(("${server.port:8088}"))
    private String port;

    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    @PostConstruct
    public void startAuthorizationCheck() {
        scheduler.scheduleAtFixedRate(this::checkServerAuthorization, 0, 1, TimeUnit.HOURS);
    }
    @PostConstruct
    public void init() throws IOException {
        String uniqueID = UniqueIDGenerator.generateUniqueID();
//        System.out.println("Generated Unique ID: " + uniqueID);
        ExpressClient.getLicenseSdk(uniqueID,appName,port);
    }

    private void checkServerAuthorization() {
        try {
            String uniqueID = UniqueIDGenerator.generateUniqueID();
//            System.out.println("Get License Unique ID: " + uniqueID);
            ExpressClient.getLicenseSdk(uniqueID,appName,port);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
