package cn.qihangerp.api.controller;

import cn.qihangerp.api.request.GoodsListRequest;
import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.enums.EnumShopType;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.jd.JdGoodsApiHelper;
import cn.qihangerp.open.jd.model.GoodsSku;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Tag(name = "开放平台-京东", description = "")
@RequestMapping("/jd/goods")
@RestController
@AllArgsConstructor
public class JdGoodsApiController {


    /**
     * 拉取商品列表（包含sku）
     * @param params
     * @return
     * @throws Exception
     */
    @Operation(summary = "拉取店铺商品列表", description = "拉取店铺商品列表")
    @RequestMapping(value = "/pull_goods_list", method = RequestMethod.POST)
    public AjaxResult pullSkuList(@Valid @RequestBody GoodsListRequest params) throws Exception {
        if (params.getShopId() == null || params.getShopId() <= 0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }

        ApiResultVo<GoodsSku> goodsSkuApiResultVo = JdGoodsApiHelper.pullGoods(params.getAppKey(), params.getAppSecret(), params.getAccessToken());

        return AjaxResult.success(goodsSkuApiResultVo);
    }
}
