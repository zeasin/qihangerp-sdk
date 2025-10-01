package cn.qihangerp.sdk.demo.controller.wei;

import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.wei.WeiTokenApiHelper;
import cn.qihangerp.open.wei.response.WeiTokenResponse;
import cn.qihangerp.sdk.demo.request.DouTokenGetRequest;
import cn.qihangerp.sdk.demo.request.WeiTokenGetRequest;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RequestMapping("/wei")
@RestController
@AllArgsConstructor
public class WeiTokenApiController {

    /**
     *
     * @param req
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/get_token", method = RequestMethod.POST)
    public AjaxResult pullSkuList(@RequestBody WeiTokenGetRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");


        ApiResultVo<WeiTokenResponse> token2 = WeiTokenApiHelper.getToken(req.getAppKey(), req.getAppSecret());
        if (token2.getCode() == 0) {
            return AjaxResult.success(token2.getData());
        } else {
            return AjaxResult.error(token2.getMsg());
        }
    }
}
