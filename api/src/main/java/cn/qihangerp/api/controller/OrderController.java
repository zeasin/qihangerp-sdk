package cn.qihangerp.api.controller;


import cn.qihangerp.common.common.*;
import cn.qihangerp.api.domain.ErpSaleOrder;
import cn.qihangerp.api.service.ErpSaleOrderService;

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
public class OrderController extends BaseController
{

    private final ErpSaleOrderService orderService;
//    private final KafkaTemplate<String,Object> kafkaTemplate;

    /**
     * 查询店铺订单列表
     */

    @GetMapping("/list")
    public TableDataInfo list(ErpSaleOrder order, PageQuery pageQuery)
    {
//        kafkaTemplate.send(MqType.ORDER_MQ,"新订单");
//        PageQuery pageQuery = new PageQuery();
//        List<OOrder> list = orderService.getList(order);
        PageResult<ErpSaleOrder> pageList = orderService.queryPageList(order,pageQuery);
        return getDataTable(pageList);
    }


    /**
     * 获取店铺订单详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(orderService.queryDetailById(id));
    }

//    /**
//     * 订单发货
//     * @param order
//     * @return
//     */
//    @Log(title = "店铺订单", businessType = BusinessType.UPDATE)
//    @PostMapping("/ship")
//    public AjaxResult ship(@RequestBody ErpOrder order)
//    {
//        order.setUpdateBy(getUsername());
//        int result = orderService.shipErpOrder(order);
//        if(result == -1) return new AjaxResult(501,"订单不存在！");
//        else if(result == -2) return new AjaxResult(502,"订单号已存在！");
//        return toAjax(result);
//    }

}
