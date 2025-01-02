package cn.qihangerp.api.controller;

import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.TableDataInfo;
import cn.qihangerp.api.domain.ErpSaleAfterInfo;
import cn.qihangerp.api.service.ErpSaleAfterInfoService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "公共模块", description = "")
@AllArgsConstructor
@RestController
@RequestMapping("/afterSale")
public class AfterSaleController extends BaseController {
    private final ErpSaleAfterInfoService afterInfoService;

    @Operation(summary = "获取市场列表", description = "获取市场列表")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "成功",
                    content = @Content(schema = @Schema(implementation = ErpSaleAfterInfo.class))),
            @ApiResponse(responseCode = "500", description = "服务器内部错误")
    })
    @GetMapping("/list")
    public TableDataInfo list(ErpSaleAfterInfo bo, PageQuery pageQuery)
    {
        var pageList = afterInfoService.queryPageList(bo,pageQuery);
        return getDataTable(pageList);
    }
}
