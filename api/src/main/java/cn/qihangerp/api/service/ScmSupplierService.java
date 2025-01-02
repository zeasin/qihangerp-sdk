package cn.qihangerp.api.service;

import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.ScmSupplier;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author Administrator
* @description 针对表【scm_supplier】的数据库操作Service
* @createDate 2024-10-22 14:43:07
*/
public interface ScmSupplierService extends IService<ScmSupplier> {
    PageResult<ScmSupplier> queryPageList(ScmSupplier bo, PageQuery pageQuery);
}
