package cn.qihangerp.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.SysLogisticsCompany;
import cn.qihangerp.api.service.SysLogisticsCompanyService;
import cn.qihangerp.api.mapper.SysLogisticsCompanyMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

/**
* @author TW
* @description 针对表【sys_logistics_company(平台快递公司表)】的数据库操作Service实现
* @createDate 2024-03-22 11:03:11
*/
@AllArgsConstructor
@Service
public class SysLogisticsCompanyServiceImpl extends ServiceImpl<SysLogisticsCompanyMapper, SysLogisticsCompany>
    implements SysLogisticsCompanyService{
    private final SysLogisticsCompanyMapper mapper;

    @Override
    public PageResult<SysLogisticsCompany> queryPageList(Integer platform, Integer shopId, PageQuery pageQuery) {
        LambdaQueryWrapper<SysLogisticsCompany> queryWrapper = new LambdaQueryWrapper<SysLogisticsCompany>().
                eq(SysLogisticsCompany::getPlatformId, platform)
                .eq(shopId != null, SysLogisticsCompany::getShopId, shopId);

        Page<SysLogisticsCompany> pages = mapper.selectPage(pageQuery.build(), queryWrapper);
        return PageResult.build(pages);
    }
}




