package cn.qihangerp.sdk.demo.request;

import lombok.Data;

@Data
public class DouOrderDetailRequest {
    private String appKey;
    private String appSecret;
    private String accessToken;
    private String orderId;

}
