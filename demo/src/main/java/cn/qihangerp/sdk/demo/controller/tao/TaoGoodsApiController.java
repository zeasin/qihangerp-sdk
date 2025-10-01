package cn.qihangerp.sdk.demo.controller.tao;

import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.enums.HttpStatus;
import cn.qihangerp.common.utils.StringUtils;
import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.tao.TaoGoodsApiHelper;
import cn.qihangerp.open.tao.response.TaoGoodsResponse;
import cn.qihangerp.sdk.demo.request.TaoGoodsPullRequest;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Slf4j
@RequestMapping("/tao/goods")
@RestController
@AllArgsConstructor
public class TaoGoodsApiController {

    /**
     * @api {post} /api/v1/pull_goods 更新店铺商品列表
     * @apiVersion 1.0.0
     * @apiName pullGoods
     * @apiGroup taoGood
     * @apiParam {String}  startTime 开始时间
     * @apiParam {String}  endTime 结束时间
     * @apiParam {Number}  shopId 店铺id(东方符号：7)
     * @apiSuccessExample {json} Success-Response:
     * HTTP/1.1 200 OK{
     * "code": "0成功其他失败",
     * "msg": "成功或失败信息"
     * }
     */
    @RequestMapping(value = "/pull_goods_list", method = RequestMethod.POST)
    public AjaxResult pullGoodsList(@RequestBody TaoGoodsPullRequest req) throws Exception {
        if (org.springframework.util.StringUtils.isEmpty(req.getAppKey())) return AjaxResult.error("缺少参数：appKey");
        if (org.springframework.util.StringUtils.isEmpty(req.getAppSecret()))
            return AjaxResult.error("缺少参数：appSecret");
        if (org.springframework.util.StringUtils.isEmpty(req.getAccessToken()))
            return AjaxResult.error("缺少参数：accessToken");

        Long pageIndex = 1L;
        Long pageSize = 100L;

        ApiResultVo<TaoGoodsResponse> resultVo = TaoGoodsApiHelper.pullGoodsList(req.getAppKey(), req.getAppSecret(), req.getAccessToken());
        if (resultVo.getCode() != 0) {
            return AjaxResult.error("接口拉取错误：" + resultVo.getMsg());
        }


        String msg = "成功，总共找到：" + resultVo.getTotalRecords() + "条商品数据";
        log.info(msg);
//        return new ApiResult<>(EnumResultVo.SUCCESS.getIndex(), msg);
        return AjaxResult.success(resultVo.getList());

    }

}
