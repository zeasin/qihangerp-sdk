package cn.qihangerp.open.xhs.response;

import lombok.Data;

import java.util.List;

@Data
public class GoodsItemSku {
    private String id;//skuId
    private String itemId;//商品itemId
    private String name;//商品名称，仅返回使用
    private Integer priceType;//是否包税
    private String erpCode;//商家编码
    private String whcode;//仓库号
    private String logisticsPlanId;//物流方案Id，通过common.getLogisticsList获取
    private Integer stock;//库存
    private Integer price;//售价，单位分，要求小于市场价，上限10w元，即10000000分
    private Integer originalPrice;//市场价，单位分
    private Integer ipq;//打包数，只允许创建ipq为1的商品，该字段查询使用
    private String specImage;//规格图
    private String barcode;//商品条形码，创建特定品类必填
    private String scSkucode;//scSkuCode编号,小红书编码,即将废弃
    private Boolean isGift;//是否是赠品,
    private Integer deliveryFlag;//1-现货，2-预售（仅开启阶梯预售改字段才有效）
    private Integer createTime;//商品创建时间
    private Integer updateTime;//商品更新时间
    private Boolean buyable;//是否在架上
    private String logisticsName;//物流模式名
    private Integer rowNumber;//sku在item中的顺序
    private List<variant> variants;//规格列表，根据item定义对规格填写具体规格值，item没有则不填
    private DeliveryTime deliveryTime;//发货时间信息
    private List<UnionItemDetail> unionItemDetails;//组合商品子商品信息，仅返回使用

    @Data
    public static class variant{
        private String id;//规格ID(规格根据common.getVariations区分，规格集合需要与item规格对齐)
        private String name;//规格名称
        private String value;//规格值(通过common.getAttributeValues获取)，查不到则自行填写
        private String valueId;//规格值ID(通过common.getAttributeValues获取)查不到可以不填
    }
    @Data
    public static class DeliveryTime{
        private String time;//发货时间，相对时间(X)，X为整数数字，绝对时间(YYYY/MM/DD)该天24点之前发货
        private String type;//发货时间类型，DEFAULT:不设置 RELATIVE_TIME:相对时间（天，即将弃用） ABSOLUTE_TIME:绝对时间（即将弃用）,TODAY:当日发，RELATIVE_TIME_NEW:相对时间（小时）,ABSOLUTE_TIME_NEW:绝对时间
    }

    @Data
    public static class UnionItemDetail{
        private String id;//子商品编号
        private String name;//子商品名称
        private String scSkuCode;//子商品小红书编码,即将废弃
        private String barcode;//子商品商品条形码
        private String erpCode;//子商品商家编码
        private Integer ipq;//子商品在组合品中的个数
    }
}
