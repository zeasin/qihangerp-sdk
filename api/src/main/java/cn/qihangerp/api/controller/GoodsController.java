package cn.qihangerp.api.controller;

import cn.qihangerp.common.common.*;
import cn.qihangerp.api.domain.ErpGoods;
import cn.qihangerp.api.domain.ErpGoodsSpec;
import cn.qihangerp.api.domain.bo.GoodsAddBo;
import cn.qihangerp.api.service.ErpGoodsService;
import cn.qihangerp.api.service.ErpGoodsSpecService;
import cn.qihangerp.api.vo.GoodsSpecListVo;

import lombok.AllArgsConstructor;

import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 商品管理Controller
 * 
 * @author qihang
 * @date 2023-12-29
 */
@AllArgsConstructor
@RestController
@RequestMapping("/goods")
public class GoodsController extends BaseController
{
    private final ErpGoodsService goodsService;
    private final ErpGoodsSpecService skuService;

    /**
     * 搜索商品SKU
     * 条件：商品编码、SKU、商品名称
     */
    @GetMapping("/searchSku")
    public TableDataInfo searchSkuBy(String keyword)
    {
        List<GoodsSpecListVo> list = goodsService.searchGoodsSpec(keyword);
        return getDataTable(list);
    }

    @GetMapping("/sku_list")
    public TableDataInfo skuList(ErpGoodsSpec bo, PageQuery pageQuery)
    {
        var pageList = goodsService.querySkuPageList(bo,pageQuery);
        return getDataTable(pageList);
    }

    /**
     * 查询商品管理列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ErpGoods goods, PageQuery pageQuery)
    {
        PageResult<ErpGoods> pageList = goodsService.queryPageList(goods, pageQuery);
        return getDataTable(pageList);
    }

    /**
     * 获取商品管理详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(goodsService.selectGoodsById(id));
    }
    /**
     * 获取商品管理详细信息
     */

    @GetMapping(value = "/sku/{id}")
    public AjaxResult getSkuInfo(@PathVariable("id") Long id)
    {
        return success(skuService.getById(id));
    }
    /**
     * 新增商品管理
     */

    @PostMapping("/add")
    public AjaxResult add(@RequestBody GoodsAddBo goods)
    {
        ResultVo<Long> resultVo = goodsService.insertGoods("getUsername()", goods);
        if(resultVo.getCode()!=0) return AjaxResult.error(resultVo.getMsg());
        else return AjaxResult.success(resultVo.getData());
//        goods.setCreateBy(getUsername());
//        int result = goodsService.insertGoods(goods);
//        if(result == -1) new AjaxResult(501,"商品编码已存在");
//        return toAjax(1);
    }



    /**
     * 修改商品管理
     */
    @PutMapping
    public AjaxResult edit(@RequestBody ErpGoods goods)
    {
        return toAjax(goodsService.updateGoods(goods));
    }
    @PutMapping("/sku")
    public AjaxResult editSku(@RequestBody ErpGoodsSpec sku)
    {
        return toAjax(skuService.updateById(sku));
    }

    /**
     * 删除商品管理
     */
    @DeleteMapping("/del/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        int result = goodsService.deleteGoodsByIds(ids);
        if(result==0) return AjaxResult.success();
        else if (result==-100) return AjaxResult.error("有关联的订单，不能删除！");
        else return AjaxResult.error();
    }


}
