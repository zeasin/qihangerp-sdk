package cn.qihangerp.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.ErpSaleOrderItem;
import cn.qihangerp.api.domain.bo.OrderItemListBo;
import cn.qihangerp.api.domain.vo.OrderItemListVo;
import cn.qihangerp.api.service.ErpSaleOrderItemService;
import cn.qihangerp.api.mapper.ErpSaleOrderItemMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

/**
* @author TW
* @description 针对表【erp_sale_order_item(订单明细表)】的数据库操作Service实现
* @createDate 2024-05-09 17:34:42
*/
@AllArgsConstructor
@Service
public class ErpSaleOrderItemServiceImpl extends ServiceImpl<ErpSaleOrderItemMapper, ErpSaleOrderItem>
    implements ErpSaleOrderItemService{
    private final ErpSaleOrderItemMapper mapper;

    @Override
    public PageResult<OrderItemListVo> selectPageVo(PageQuery pageQuery, OrderItemListBo bo) {
        var pages = mapper.selectPageVo(pageQuery.build(),bo);
        return   PageResult.build(pages);
    }
}




