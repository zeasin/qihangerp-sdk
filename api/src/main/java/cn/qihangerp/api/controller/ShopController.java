package cn.qihangerp.api.controller;

import cn.qihangerp.common.common.AjaxResult;
import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.common.TableDataInfo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.qihangerp.api.domain.SShop;
import cn.qihangerp.api.domain.SShopPlatform;
import cn.qihangerp.api.service.SShopPlatformService;
import cn.qihangerp.api.service.SShopService;
import cn.qihangerp.api.service.SysLogisticsCompanyService;

import lombok.AllArgsConstructor;

import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 店铺Controller
 * 
 * @author qihang
 * @date 2023-12-31
 */
@AllArgsConstructor
@RestController
@RequestMapping("/shop")
public class ShopController extends BaseController {
    private final SysLogisticsCompanyService logisticsCompanyService;
    private final SShopService shopService;
    private final SShopPlatformService platformService;

    /**
     * 查询店铺列表logistics
     */

    @GetMapping("/list")
    public TableDataInfo list(SShop shop)
    {
        LambdaQueryWrapper<SShop> qw = new LambdaQueryWrapper<SShop>().eq(shop.getPlatform()!=null,SShop::getPlatform,shop.getPlatform());
        List<SShop> list = shopService.list(qw);
        return getDataTable(list);
    }

    @GetMapping("/platformList")
    public TableDataInfo platformList()
    {
        List<SShopPlatform> list = platformService.list();
        return getDataTable(list);
    }

    /**
     * 获取店铺详细信息
     */

    @GetMapping(value = "/shop/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(shopService.getById(id));
    }

    @GetMapping(value = "/platform/{id}")
    public AjaxResult getPlatform(@PathVariable("id") Long id)
    {
        return success(platformService.getById(id));
    }

    /**
     * 新增店铺
     */

    @PostMapping("/shop")
    public AjaxResult add(@RequestBody SShop shop)
    {
        shop.setCreateTime(new Date());
        return toAjax(shopService.save(shop));
    }

    /**
     * 修改店铺
     */

    @PutMapping("/shop")
    public AjaxResult edit(@RequestBody SShop shop)
    {
        shop.setUpdateTime(new Date());
        return toAjax(shopService.updateById(shop));
    }

    /**
     * 修改平台
     * @param
     * @return
     */
    @PutMapping("/platform")
    public AjaxResult edit(@RequestBody SShopPlatform platform)
    {
        return toAjax(platformService.updateById(platform));
    }

    /**
     * 删除店铺
     */

	@DeleteMapping("/shop/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(shopService.removeBatchByIds(Arrays.stream(ids).toList()));
    }

}
