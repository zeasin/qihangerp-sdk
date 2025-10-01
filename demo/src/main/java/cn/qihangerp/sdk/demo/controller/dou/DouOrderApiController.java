package cn.qihangerp.sdk.demo.controller.dou;

import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.dou.DouGoodsApiHelper;
import cn.qihangerp.open.dou.DouOrderApiHelper;
import cn.qihangerp.open.dou.model.GoodsListResultVo;
import cn.qihangerp.sdk.demo.request.DouGoodsPullRequest;
import cn.qihangerp.sdk.demo.request.DouOrderDetailRequest;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RequestMapping("/dou/order")
@RestController
@AllArgsConstructor
public class DouOrderApiController {

    /**
     *
     * @param req
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/pull_order_list", method = RequestMethod.POST)
    public AjaxResult pullSkuList(@RequestBody DouGoodsPullRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");
        if (org.springframework.util.StringUtils.isEmpty(req.getAccessToken()))
            return AjaxResult.error("缺少参数：accessToken");

        ApiResultVo<GoodsListResultVo> resultVo = DouGoodsApiHelper.getGoodsList(req.getAppKey(), req.getAppSecret(), req.getAccessToken(), req.getPageIndex(), req.getPageSize());
        if(resultVo.getCode() !=0 ){
            return AjaxResult.error("接口拉取错误："+resultVo.getMsg());
        }

        return AjaxResult.success(resultVo.getData());
    }
    @RequestMapping(value = "/pull_order_detail", method = RequestMethod.POST)
    public AjaxResult getOrderDetail(@RequestBody DouOrderDetailRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");
        if (org.springframework.util.StringUtils.isEmpty(req.getAccessToken()))
            return AjaxResult.error("缺少参数：accessToken");
        if (org.springframework.util.StringUtils.isEmpty(req.getOrderId()))
            return AjaxResult.error("缺少参数：orderId");

        var resultVo = DouOrderApiHelper.pullOrderDetail(req.getAppKey(), req.getAppSecret(), req.getAccessToken(), req.getOrderId());
        if(resultVo.getCode() !=0 ){
            return AjaxResult.error("接口拉取错误："+resultVo.getMsg());
        }

        return AjaxResult.success(resultVo.getData());
    }

}
