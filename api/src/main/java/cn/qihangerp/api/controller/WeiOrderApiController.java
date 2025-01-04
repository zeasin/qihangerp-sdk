package cn.qihangerp.api.controller;

import cn.qihangerp.api.domain.ErpSaleAfterInfo;
import cn.qihangerp.api.request.OrderDetailRequest;
import cn.qihangerp.api.request.OrderListRequest;
import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.wei.WeiOrderApiHelper;
import cn.qihangerp.open.wei.model.Order;
import com.alibaba.fastjson2.JSONObject;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Tag(name = "开放平台-微信小店", description = "")
@RequestMapping("/wei/order")
@RestController
@AllArgsConstructor
public class WeiOrderApiController  {

    /**
     * 拉取订单
     * @param params
     * @return
     */
    @Operation(summary = "拉取店铺订单列表", description = "拉取店铺订单列表")
    @PostMapping(value = "/pull_order_list")
    public AjaxResult pullList(@Valid @RequestBody OrderListRequest params) {
        if (params.getShopId() == null || params.getShopId() <= 0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }
        // 定义时间格式
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime startTime = LocalDateTime.parse(params.getBeginTime(), formatter);
        LocalDateTime  endTime = LocalDateTime.parse(params.getEndTime(), formatter);

        ApiResultVo<Order> orderApiResultVo = WeiOrderApiHelper.pullOrderList(startTime, endTime, params.getAccessToken(),null,null);

        return AjaxResult.success(orderApiResultVo);
    }

    /**
     * 拉取订单详情
     * @param params
     * @return
     * @throws Exception
     */
    @Operation(summary = "拉取店铺订单详情", description = "拉取店铺订单详情")
    @RequestMapping(value = "/pull_order_detail", method = RequestMethod.POST)
    public AjaxResult pullDetail(@Valid @RequestBody OrderDetailRequest params) throws Exception {
        if (params.getShopId() == null || params.getShopId() <= 0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }
        if (params.getOrderId()==null || params.getOrderId()==0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有订单编号");
        }

        ApiResultVo<Order> apiResultVo = WeiOrderApiHelper.pullOrderDetail(params.getOrderId(), params.getAccessToken());

        return AjaxResult.success(apiResultVo);
    }
}
