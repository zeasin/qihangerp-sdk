package cn.qihangerp.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.PageResult;
import cn.qihangerp.api.domain.ErpShipWaybill;
import cn.qihangerp.api.domain.bo.ShipWaybillBo;
import cn.qihangerp.api.service.ErpShipWaybillService;
import cn.qihangerp.api.mapper.ErpShipWaybillMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
* @author TW
* @description 针对表【erp_ship_waybill(发货电子面单记录表)】的数据库操作Service实现
* @createDate 2024-06-18 17:06:10
*/
@AllArgsConstructor
@Service
public class ErpShipWaybillServiceImpl extends ServiceImpl<ErpShipWaybillMapper, ErpShipWaybill>
    implements ErpShipWaybillService{
    private final ErpShipWaybillMapper mapper;
    @Override
    public PageResult<ErpShipWaybill> queryPageList(ShipWaybillBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<ErpShipWaybill> queryWrapper = new LambdaQueryWrapper<ErpShipWaybill>()
                .eq(bo.getShopId()!=null,ErpShipWaybill::getShopId,bo.getShopId())
                .eq(StringUtils.hasText(bo.getOrderId()),ErpShipWaybill::getOrderId,bo.getOrderId())
                .eq(StringUtils.hasText(bo.getWaybillCode()),ErpShipWaybill::getWaybillCode,bo.getWaybillCode())
                ;
        Page<ErpShipWaybill> pages = mapper.selectPage(pageQuery.build(), queryWrapper);

        return PageResult.build(pages);
    }
}




