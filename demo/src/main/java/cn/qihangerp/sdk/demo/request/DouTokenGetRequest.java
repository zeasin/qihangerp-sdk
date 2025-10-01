package cn.qihangerp.sdk.demo.request;

import lombok.Data;

@Data
public class DouTokenGetRequest {
    private String appKey;
    private String appSecret;
    private Long shopId;

}
