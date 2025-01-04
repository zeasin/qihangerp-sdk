package cn.qihangerp.api.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Data;


@Data
public class OrderDetailRequest {

    @NotNull(message="店铺ID不能为空")
    @Min(value = 1, message = "shopId必须大于0")
    @Schema(description = "店铺ID", example = "123", required = true)
    private Long shopId;//店铺Id

    @NotNull(message="orderId不能为空")
    @Min(value = 1, message = "orderId必须大于0")
    @Schema(description = "订单ID", example = "123", required = true)
    private Long orderId;//订单编号

    @NotEmpty(message="accessToken不能为空")
    @Schema(description = "accessToken")
    private String accessToken;


}
