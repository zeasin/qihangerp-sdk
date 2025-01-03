package cn.qihangerp.api.controller;

import cn.qihangerp.api.request.TokenRequest;
import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.wei.WeiTokenApiHelper;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "开放平台-微信小店", description = "")
@RequestMapping("/wei/oauth")
@RestController
@AllArgsConstructor
public class WeiTokenApiController {
    @Operation(summary = "获取Token", description = "获取Token")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "成功",
                    content = @Content(schema = @Schema(implementation = WeiTokenResponse.class))),
            @ApiResponse(responseCode = "500", description = "服务器内部错误")
    })
    @PostMapping(value = "/get_token")
    public AjaxResult getToken(@Valid @RequestBody TokenRequest request)  {
        ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(request.getAppKey(), request.getAppSecret());
        if(token.getCode() == 0){
            return AjaxResult.success(token.getData());
        }else {
            return AjaxResult.error("获取Token失败");
        }
    }
}
