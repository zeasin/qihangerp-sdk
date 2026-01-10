package cn.qihangerp.sdk.demo.controller.tao;

import cn.qihangerp.sdk.demo.common.AjaxResult;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.tao.TaoOrderApiHelper;
import cn.qihangerp.open.tao.response.TaoOrderDetailResponse;
import cn.qihangerp.sdk.demo.request.TaoOrderDetailRequest;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RequestMapping("/tao/order")
@RestController
@AllArgsConstructor
public class TaoOrderApiController {


    @RequestMapping(value = "/get_order_detail", method = RequestMethod.POST)
    public AjaxResult pullGoodsList(@RequestBody TaoOrderDetailRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");
        if (org.springframework.util.StringUtils.isEmpty(req.getAccessToken()))
            return AjaxResult.error("缺少参数：accessToken");
        if (org.springframework.util.StringUtils.isEmpty(req.getOrderId()))
            return AjaxResult.error("缺少参数：orderId");

        ApiResultVo<TaoOrderDetailResponse> resultVo = TaoOrderApiHelper.pullOrderDetail(req.getOrderId(), req.getAppKey(), req.getAppSecret(), req.getAccessToken());
        if (resultVo.getCode() != 0) {
            return AjaxResult.error("接口拉取错误：" + resultVo.getMsg());
        }

        return AjaxResult.success(resultVo.getData());

    }

}
