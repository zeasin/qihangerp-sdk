package cn.qihangerp.open.xhs;

import lombok.Data;

@Data
public class TokenVo {
    private String accessToken;
    private Long accessTokenExpiresAt;
    private String refreshToken;
    private Long refreshTokenExpiresAt;
    private String sellerId;
    private String sellerName;
}
