package cn.qihangerp.api.common;

import io.swagger.v3.oas.annotations.media.Schema;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class PullRequest {

    @NotNull(message="店铺ID不能为空")
    @Min(value = 1, message = "shopId必须大于0")
    @Schema(description = "店铺ID", example = "123", required = true)
    private Long shopId;//店铺Id

    private Long orderId;//订单编号

    @NotEmpty(message="appKey不能为空")
    @Schema(description = "appKey", required = true)
    private String appKey;

    @NotEmpty(message="appSecret不能为空")
    @Schema(description = "appSecret", required = true)
    private String appSecret;

    @Schema(description = "accessToken，不传就重新获取")
    private String accessToken;
}
