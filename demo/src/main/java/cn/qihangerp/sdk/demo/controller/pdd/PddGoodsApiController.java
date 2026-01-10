package cn.qihangerp.sdk.demo.controller.pdd;

import cn.qihangerp.sdk.demo.common.AjaxResult;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.pdd.PddGoodsApiHelper;
import cn.qihangerp.open.pdd.model.GoodsResultVo;
import cn.qihangerp.sdk.demo.request.PddGoodsPullRequest;
import lombok.AllArgsConstructor;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/pdd/goods")
@RestController
@AllArgsConstructor
public class PddGoodsApiController {

    /**
     * 拉取商品列表（包含sku）
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/pull_goods_list", method = RequestMethod.POST)
    public AjaxResult pullSkuList(@RequestBody PddGoodsPullRequest request) throws Exception {
        if(StringUtils.isEmpty(request.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if(StringUtils.isEmpty(request.getAppSecret())) return AjaxResult.error("缺少参数：appSecret");
        if(StringUtils.isEmpty(request.getAccessToken())) return AjaxResult.error("缺少参数：accessToken");
        Long currTimeMillis = System.currentTimeMillis();


        ApiResultVo<GoodsResultVo> resultVo = PddGoodsApiHelper.pullGoodsList(request.getAppKey(), request.getAppSecret(), request.getAccessToken(), request.getPageIndex(), request.getPageSize());
        if(resultVo.getCode() == 10019) return AjaxResult.error("Token已过期");

//        ApiResultVo<PddGoodsResponse> resultVo = GoodsApiHelper.pullGoodsList(appKey, appSecret,accessToken,startTime,endTime);
        if(resultVo.getCode() !=0 ){
            return AjaxResult.error("接口拉取错误："+resultVo.getMsg());
        }

        if (resultVo.getData().getGoodsList() == null) return AjaxResult.error(1200,"数据获取失败");

        return AjaxResult.success(resultVo.getData().getGoodsList());
    }
}
