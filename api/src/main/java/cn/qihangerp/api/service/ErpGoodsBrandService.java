package cn.qihangerp.api.service;

import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.ErpGoodsBrand;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author Administrator
* @description 针对表【erp_goods_brand】的数据库操作Service
* @createDate 2024-10-22 14:38:01
*/
public interface ErpGoodsBrandService extends IService<ErpGoodsBrand> {
    PageResult<ErpGoodsBrand> queryPageList(ErpGoodsBrand bo, PageQuery pageQuery);
}
