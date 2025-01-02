package cn.qihangerp.api.controller;


import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.common.common.TableDataInfo;
import cn.qihangerp.api.domain.bo.OrderItemListBo;
import cn.qihangerp.api.domain.vo.OrderItemListVo;
import cn.qihangerp.api.service.ErpSaleOrderItemService;
import lombok.AllArgsConstructor;

import org.springframework.web.bind.annotation.*;

/**
 * 店铺订单Controller
 *
 * @author qihang
 * @date 2023-12-31
 */
@AllArgsConstructor
@RestController
@RequestMapping("/order")
public class OrderItemController extends BaseController
{
    private final ErpSaleOrderItemService itemService;

    /**
     * 查询店铺订单列表
     */
    @GetMapping("/item_list")
    public TableDataInfo list(OrderItemListBo bo, PageQuery pageQuery)
    {
        PageResult<OrderItemListVo> pageList = itemService.selectPageVo(pageQuery,bo);
        return getDataTable(pageList);
    }

//    /**
//     * 更新erp sku id
//     * @param orderItem
//     * @return
//     */
//    @PostMapping("/updateErpSkuId")
//    public AjaxResult ship(@RequestBody ErpSaleOrderItem orderItem)
//    {
//        if(StringUtils.isEmpty(orderItem.getId()) || orderItem.getGoodsSkuId()==null){
//            return AjaxResult.error("确少必要参数");
//        }
//        itemService.updateErpSkuId(orderItem.getId(), orderItem.getGoodsSkuId());
//        return AjaxResult.success();
//    }
}
