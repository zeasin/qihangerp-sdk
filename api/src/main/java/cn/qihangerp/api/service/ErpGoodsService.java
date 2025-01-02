package cn.qihangerp.api.service;

import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.common.common.ResultVo;
import cn.qihangerp.api.domain.ErpGoods;
import com.baomidou.mybatisplus.extension.service.IService;
import cn.qihangerp.api.domain.ErpGoodsSpec;
import cn.qihangerp.api.domain.bo.GoodsAddBo;
import cn.qihangerp.api.vo.GoodsSpecListVo;

import java.util.List;

/**
* @author Administrator
* @description 针对表【erp_goods(商品库存管理)】的数据库操作Service
* @createDate 2024-10-22 14:38:01
*/
public interface ErpGoodsService extends IService<ErpGoods> {
    PageResult<ErpGoodsSpec> querySkuPageList(ErpGoodsSpec bo, PageQuery pageQuery);
    PageResult<ErpGoods> queryPageList(ErpGoods bo, PageQuery pageQuery);

    List<GoodsSpecListVo> searchGoodsSpec(String keyword);
    List<ErpGoods> selectGoodsList(ErpGoods goods);
    ErpGoods selectGoodsById(Long id);
    /**
     * 新增商品管理
     *
     * @param goods 商品管理
     * @return 结果
     */
    public ResultVo<Long> insertGoods(String userName , GoodsAddBo goods);

    /**
     * 修改商品管理
     *
     * @param goods 商品管理
     * @return 结果
     */
    public int updateGoods(ErpGoods goods);

    /**
     * 批量删除商品管理
     *
     * @param ids 需要删除的商品管理主键集合
     * @return 结果
     */
    public int deleteGoodsByIds(Long[] ids);

    int insertGoodsSku(ErpGoodsSpec goodsSku);

}
