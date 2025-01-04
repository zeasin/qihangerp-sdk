package cn.qihangerp.api.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Data;


@Data
public class RefundListRequest {

    @NotNull(message="店铺ID不能为空")
    @Min(value = 1, message = "shopId必须大于0")
    @Schema(description = "店铺ID", example = "123", required = true)
    private Long shopId;//店铺Id

    @NotEmpty(message="accessToken不能为空")
    @Schema(description = "accessToken")
    private String accessToken;

    @Pattern(regexp = "^\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}$", message = "beginTime的格式必须为yyyy-MM-dd HH:mm:ss")
    @NotEmpty(message="beginTime不能为空")
    @Schema(description = "开始时间", required = true)
    private String beginTime;

    @Pattern(regexp = "^\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}$", message = "endTime的格式必须为yyyy-MM-dd HH:mm:ss")
    @NotEmpty(message="endTime不能为空")
    @Schema(description = "结束时间", required = true)
    private String endTime;
}
