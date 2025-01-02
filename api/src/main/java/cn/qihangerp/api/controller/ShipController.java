package cn.qihangerp.api.controller;

import cn.qihangerp.api.service.ErpShipStockUpService;
import cn.qihangerp.api.service.ErpShipWaybillService;
import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.TableDataInfo;
import cn.qihangerp.api.domain.bo.ShipStockUpBo;
import cn.qihangerp.api.domain.bo.ShipWaybillBo;


import lombok.AllArgsConstructor;

import org.springframework.web.bind.annotation.*;

/**
 * 店铺Controller
 * 
 * @author qihang
 * @date 2023-12-31
 */
@AllArgsConstructor
@RestController
@RequestMapping("/ship")
public class ShipController extends BaseController {
    private final ErpShipStockUpService shipStockUpService;
    private final ErpShipWaybillService shipWaybillService;

    /**
     * 备货列表
     * @param bo
     * @param pageQuery
     * @return
     */
    @GetMapping("/stock_up_list")
    public TableDataInfo stock_up_list(ShipStockUpBo bo, PageQuery pageQuery)
    {
        var pageList = shipStockUpService.queryPageList(bo,pageQuery);
        return getDataTable(pageList);
    }

    /**
     * 订单物流信息list
     * @param bo
     * @param pageQuery
     * @return
     */
    @GetMapping("/order_waybill_list")
    public TableDataInfo order_waybill_list(ShipWaybillBo bo, PageQuery pageQuery)
    {
        var pageList = shipWaybillService.queryPageList(bo,pageQuery);
        return getDataTable(pageList);
    }


}
