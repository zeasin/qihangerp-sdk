package cn.qihangerp.api.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import lombok.Data;

@Data
public class TokenCheckRequest {
    @NotEmpty(message="appKey不能为空")
    @Schema(description = "appKey", required = true)
    private String appKey;

    @NotEmpty(message="appSecret不能为空")
    @Schema(description = "appSecret", required = true)
    private String appSecret;

    @NotEmpty(message="accessToken不能为空")
    @Schema(description = "accessToken", required = true)
    private String accessToken;
}
