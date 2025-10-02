package cn.qihangerp.sdk.demo.request;

import lombok.Data;

@Data
public class TaoOrderDetailRequest {
    private String appKey;
    private String appSecret;
    private String accessToken;
    private String orderId;
}
