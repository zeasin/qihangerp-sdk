package cn.qihangerp.api.controller;

import cn.qihangerp.api.request.GoodsListRequest;
import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.wei.WeiGoodsApiService;
import cn.qihangerp.open.wei.model.Product;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@Tag(name = "开放平台-微信小店", description = "")
@RequestMapping("/wei/goods")
@RestController
@AllArgsConstructor
public class WeiGoodsApiController {
    private final WeiGoodsApiService goodsApiService;
//    private final WeiApiCommon apiCommon;

    @Operation(summary = "拉取店铺商品列表", description = "拉取店铺商品列表")
//    @ApiResponses(value = {
//            @ApiResponse(responseCode = "200", description = "成功",
//                    content = @Content(schema = @Schema(implementation = ErpSaleAfterInfo.class))),
//            @ApiResponse(responseCode = "500", description = "服务器内部错误")
//    })
    @PostMapping(value = "/pull_goods_list")
    public AjaxResult pullList(@Valid @RequestBody GoodsListRequest params)  {
        if (params.getShopId() == null || params.getShopId() <= 0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }

        ApiResultVo<Product> productApiResultVo = goodsApiService.pullGoodsList(params.getAccessToken());

        if(productApiResultVo.getCode() == 0){
            return AjaxResult.success(productApiResultVo.getList());
        } else if(productApiResultVo.getCode() == ApiResultVoEnum.TokenFail.getIndex()){
            return AjaxResult.error(ApiResultVoEnum.TokenFail.getIndex(),"Token失效，请重新获取！");
        }
        else{
            return AjaxResult.error(productApiResultVo.getMsg());
        }
    }
}
