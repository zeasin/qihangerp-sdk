package cn.qihangerp.sdk.demo.controller.wei;

import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.open.wei.WeiGoodsApiHelper;
import cn.qihangerp.sdk.demo.request.WeiGoodsPullRequest;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/wei/goods")
@RestController
@AllArgsConstructor
public class WeiGoodsApiController {

    @RequestMapping(value = "/pull_goods_list", method = RequestMethod.POST)
    public AjaxResult pullList(@RequestBody WeiGoodsPullRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");

        var productApiResultVo = WeiGoodsApiHelper.pullGoodsList(req.getAccessToken());
//        ApiResultVo<Product> productApiResultVo = WeiGoodsApiHelper.pullGoodsList(accessToken);
        if(productApiResultVo.getCode() == 0){

        }



        return AjaxResult.success();
    }
}
