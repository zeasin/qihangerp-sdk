package cn.qihangerp.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.ScmSupplier;
import cn.qihangerp.api.service.ScmSupplierService;
import cn.qihangerp.api.mapper.ScmSupplierMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
* @author Administrator
* @description 针对表【scm_supplier】的数据库操作Service实现
* @createDate 2024-10-22 14:43:07
*/
@AllArgsConstructor
@Service
public class ScmSupplierServiceImpl extends ServiceImpl<ScmSupplierMapper, ScmSupplier>
    implements ScmSupplierService{
    private final ScmSupplierMapper mapper;

    @Override
    public PageResult<ScmSupplier> queryPageList(ScmSupplier bo, PageQuery pageQuery) {
        LambdaQueryWrapper<ScmSupplier> queryWrapper = new LambdaQueryWrapper<ScmSupplier>();

        queryWrapper.like(StringUtils.hasText(bo.getName()), ScmSupplier::getName, bo.getName());
        Page<ScmSupplier> pages = mapper.selectPage(pageQuery.build(), queryWrapper);

        return PageResult.build(pages);
    }
}




