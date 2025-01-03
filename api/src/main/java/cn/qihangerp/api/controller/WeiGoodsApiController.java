package cn.qihangerp.api.controller;

import cn.qihangerp.api.request.GoodsRequest;
import cn.qihangerp.api.domain.ErpSaleAfterInfo;
import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.wei.WeiGoodsApiService;
import cn.qihangerp.open.wei.WeiTokenApiHelper;
import cn.qihangerp.open.wei.model.Product;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;

@Tag(name = "开放平台-微信小店", description = "")
@RequestMapping("/wei/goods")
@RestController
@AllArgsConstructor
public class WeiGoodsApiController {
    private final WeiGoodsApiService goodsApiService;
//    private final WeiApiCommon apiCommon;

    @Operation(summary = "拉取店铺商品列表", description = "拉取店铺商品列表")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "成功",
                    content = @Content(schema = @Schema(implementation = ErpSaleAfterInfo.class))),
            @ApiResponse(responseCode = "500", description = "服务器内部错误")
    })
    @PostMapping(value = "/pull_goods_list")
    public AjaxResult pullList(@Valid @RequestBody GoodsRequest params)  {
        if (params.getShopId() == null || params.getShopId() <= 0) {
//            return ApiResul new ApiResult(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }
        if(StringUtils.isEmpty(params.getAccessToken())){
            ApiResultVo<WeiTokenResponse> token = WeiTokenApiHelper.getToken(params.getAppKey(), params.getAppSecret());
            if(token.getCode()==0) {
                params.setAccessToken(token.getData().getAccess_token());
            }else{
                return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，"+token.getMsg());
            }
        }
        ApiResultVo<Product> productApiResultVo = goodsApiService.pullGoodsList(params.getAccessToken());

//        WeiGoodsApiHelper.pullGoodsList(params.getAccessToken());
//        Date currDateTime = new Date();
//        long startTime = System.currentTimeMillis();
//        var checkResult = apiCommon.checkBefore(params.getShopId());
//        if (checkResult.getCode() != ResultVoEnum.SUCCESS.getIndex()) {
//            return AjaxResult.error(checkResult.getCode(), checkResult.getMsg(), checkResult.getData());
//        }
//
//        String accessToken = checkResult.getData().getAccessToken();
//        String serverUrl = checkResult.getData().getServerUrl();
//        String appKey = checkResult.getData().getAppKey();
//        String appSecret = checkResult.getData().getAppSecret();
//
////        ApiResultVo<Product> productApiResultVo = WeiGoodsApiHelper.pullGoodsList(accessToken);
        if(productApiResultVo.getCode() == 0){
            // 成功
//            for (var product:productApiResultVo.getList()){
//                OmsWeiGoods goods = new OmsWeiGoods();
//                BeanUtils.copyProperties(product,goods);
//                weiGoodsService.saveAndUpdateGoods(params.getShopId(),goods);
//            }
//            productApiResultVo.getTotalRecords()
            return AjaxResult.success(productApiResultVo.getList());
        } else if(productApiResultVo.getCode() == ApiResultVoEnum.TokenFail.getIndex()){
            return AjaxResult.error(ApiResultVoEnum.TokenFail.getIndex(),"Token失效，请重新获取！");
        }
        else{
            return AjaxResult.error(productApiResultVo.getMsg());
        }
//
//        GoodsApiService remoting = RemoteUtil.Remoting(serverUrl, GoodsApiService.class);
//        GoodsListApiBo apiBo = new GoodsListApiBo();
//        apiBo.setPage_size(30);
//        apiBo.setStatus(5);
//        var res = remoting.getGoodsList(accessToken, apiBo);
//        if(res.getErrcode() == 0){
////            // 拉取到了数据 拉取详情
//            if(res.getProduct_ids()!=null&&res.getProduct_ids().length>0){
////                for (var productId:res.getProduct_ids()) {
////                    GoodsDetailApiBo apiBo1 = new GoodsDetailApiBo();
////                    apiBo1.setProduct_id(productId.toString());
////                    GoodsDetailVo goodsDetail = remoting.getGoodsDetail(accessToken, apiBo1);
////                    if(goodsDetail.getErrcode()==0){
////                        // 保存到数据库
////                        WeiGoods goods = new WeiGoods();
////                        BeanUtils.copyProperties(goodsDetail.getProduct(),goods);
////                        goods.setHeadImg(goodsDetail.getProduct().getHead_imgs().getString(0));
////                        goods.setHeadImgs(JSONObject.toJSONString(goodsDetail.getProduct().getHead_imgs()));
////                        goods.setDescInfo(JSONObject.toJSONString(goodsDetail.getProduct().getDesc_info()));
////                        goods.setAttrs(JSONObject.toJSONString(goodsDetail.getProduct().getAttrs()));
////                        List<WeiGoodsSku> skuList = new ArrayList<>();
////                        for (var sku:goodsDetail.getProduct().getSkus()) {
////                            WeiGoodsSku goodsSku = new WeiGoodsSku();
////                            BeanUtils.copyProperties(sku,goodsSku);
////                            goodsSku.setSkuAttrs(JSONObject.toJSONString(sku.getSku_attrs()));
////                            goodsSku.setSkuDeliverInfo(JSONObject.toJSONString(sku.getSku_deliver_info()));
////                            skuList.add(goodsSku);
////                        }
////                        goods.setSkus(skuList);
////                        weiGoodsService.saveAndUpdateGoods(params.getShopId(),goods);
////                    }
////                }
////
//            }
//        }



    }
}
