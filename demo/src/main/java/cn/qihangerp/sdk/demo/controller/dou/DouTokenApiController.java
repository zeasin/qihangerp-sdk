package cn.qihangerp.sdk.demo.controller.dou;

import cn.qihangerp.sdk.demo.common.AjaxResult;
import cn.qihangerp.open.dou.DouTokenApiHelper;
import cn.qihangerp.sdk.demo.request.DouTokenGetRequest;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RequestMapping("/dou")
@RestController
@AllArgsConstructor
public class DouTokenApiController {

    /**
     *
     * @param req
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/get_token", method = RequestMethod.POST)
    public AjaxResult pullSkuList(@RequestBody DouTokenGetRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");
        if (req.getShopId() == null || req.getShopId() == 0)
            return AjaxResult.error("缺少参数：ShopId");

        var resultVo = DouTokenApiHelper.getToken(req.getAppKey(), req.getAppSecret(), req.getShopId());
        if(resultVo.getCode() !=0 ){
            return AjaxResult.error("接口拉取错误："+resultVo.getMsg());
        }

        return AjaxResult.success(resultVo.getData());
    }
}
