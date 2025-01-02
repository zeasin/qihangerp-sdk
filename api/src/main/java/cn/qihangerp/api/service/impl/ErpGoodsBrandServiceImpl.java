package cn.qihangerp.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.ErpGoodsBrand;
import cn.qihangerp.api.service.ErpGoodsBrandService;
import cn.qihangerp.api.mapper.ErpGoodsBrandMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
* @author Administrator
* @description 针对表【erp_goods_brand】的数据库操作Service实现
* @createDate 2024-10-22 14:38:01
*/
@AllArgsConstructor
@Service
public class ErpGoodsBrandServiceImpl extends ServiceImpl<ErpGoodsBrandMapper, ErpGoodsBrand>
    implements ErpGoodsBrandService{
    private ErpGoodsBrandMapper mapper;

    @Override
    public PageResult<ErpGoodsBrand> queryPageList(ErpGoodsBrand bo, PageQuery pageQuery) {
        LambdaQueryWrapper<ErpGoodsBrand> queryWrapper = new LambdaQueryWrapper<ErpGoodsBrand>();

        queryWrapper.like(StringUtils.hasText(bo.getName()), ErpGoodsBrand::getName, bo.getName());
        Page<ErpGoodsBrand> pages = mapper.selectPage(pageQuery.build(), queryWrapper);

        return PageResult.build(pages);
    }
}




