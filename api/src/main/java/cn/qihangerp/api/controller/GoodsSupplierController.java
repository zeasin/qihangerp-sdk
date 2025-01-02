package cn.qihangerp.api.controller;


import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.TableDataInfo;
import cn.qihangerp.api.domain.ScmSupplier;
import cn.qihangerp.api.service.ScmSupplierService;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Date;

@AllArgsConstructor
@RestController
@RequestMapping("/supplier")
public class GoodsSupplierController extends BaseController {
    private final ScmSupplierService supplierService;

    @GetMapping("/list")
    public TableDataInfo list(ScmSupplier bo, PageQuery pageQuery)
    {
        var pageList = supplierService.queryPageList(bo,pageQuery);
        return getDataTable(pageList);
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(supplierService.getById(id));
    }

    /**
     * 新增【请填写功能名称】
     */
    @PostMapping
    public AjaxResult add(@RequestBody ScmSupplier scmSupplier)
    {
        scmSupplier.setCreatetime(new Date());
        scmSupplier.setIsdelete(0);
        return toAjax(supplierService.save(scmSupplier));
    }

    /**
     * 修改【请填写功能名称】
     */
    @PutMapping
    public AjaxResult edit(@RequestBody ScmSupplier scmSupplier)
    {
        return toAjax(supplierService.updateById(scmSupplier));
    }

    /**
     * 删除【请填写功能名称】
     */
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(supplierService.removeByIds(Arrays.stream(ids).toList()));
    }
}
