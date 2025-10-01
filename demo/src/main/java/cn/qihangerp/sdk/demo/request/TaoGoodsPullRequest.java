package cn.qihangerp.sdk.demo.request;

import lombok.Data;

@Data
public class TaoGoodsPullRequest {
    private String appKey;
    private String appSecret;
    private String accessToken;
    private Integer pageIndex=1;
    private Integer pageSize=100;
}
