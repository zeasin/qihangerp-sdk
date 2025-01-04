package cn.qihangerp.api.controller;

import cn.qihangerp.api.request.RefundListRequest;
import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.wei.WeiRefundApiHelper;
import cn.qihangerp.open.wei.model.AfterSaleOrder;
import com.alibaba.fastjson2.JSONObject;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.Date;

@Tag(name = "开放平台-微信小店", description = "")
@RequestMapping("/wei/refund")
@RestController
@AllArgsConstructor
public class WeiRefundApiController extends BaseController {

    @Operation(summary = "拉取店铺售后列表", description = "拉取店铺售后列表")
    @RequestMapping(value = "/pull_refund_list", method = RequestMethod.POST)
    public AjaxResult pullList(@Valid @RequestBody RefundListRequest params) throws Exception {
        if (params.getShopId() == null || params.getShopId() <= 0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }


        // 获取最后更新时间
        LocalDateTime endTime = LocalDateTime.now();
        LocalDateTime startTime = endTime.minusDays(1);

        int insertSuccess = 0;//新增成功的订单
        int totalError = 0;
        int hasExistOrder = 0;//已存在的订单数

        ApiResultVo<AfterSaleOrder> apiResultVo = WeiRefundApiHelper.pullRefundList(startTime, endTime, params.getAccessToken());


        return AjaxResult.success(apiResultVo);
    }
}
