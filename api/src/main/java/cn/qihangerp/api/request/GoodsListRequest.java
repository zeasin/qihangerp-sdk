package cn.qihangerp.api.request;

import io.swagger.v3.oas.annotations.media.Schema;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class GoodsListRequest {

    @NotNull(message="店铺ID不能为空")
    @Min(value = 1, message = "shopId必须大于0")
    @Schema(description = "店铺ID", example = "123", required = true)
    private Long shopId;//店铺Id

    @NotEmpty(message="appKey不能为空")
    @Schema(description = "appKey", required = true)
    private String appKey;

    @NotEmpty(message="appSecret不能为空")
    @Schema(description = "appSecret", required = true)
    private String appSecret;

    @NotEmpty(message="accessToken不能为空")
    @Schema(description = "accessToken")
    private String accessToken;
}
