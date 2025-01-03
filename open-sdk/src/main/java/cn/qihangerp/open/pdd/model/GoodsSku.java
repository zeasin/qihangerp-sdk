package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class GoodsSku {

    /**
     * 商家外部编码（商品），同其他接口中的outer_goods_id 、out_goods_id、out_goods_sn、outer_goods_sn 都为商家编码（goods维度）。
     */
    @JsonProperty("outer_goods_id")
    private String outerGoodsId;
    /**
     * sku是否在架上，0-下架中，1-架上
     */
    @JsonProperty("is_sku_onsale")
    private int isSkuOnsale;
//    /**
//     * reserve_quantity
//     */
//    @JsonProperty("reserve_quantity")
//    private int reserve_quantity;
//    /**
//     * spec_details
//     */
//    @JsonProperty("spec_details")
//    private Object spec_details;
    /**
     * 	sku编码
     */
    @JsonProperty("sku_id")
    private Long skuId;
    /**
     * 商家外部编码（sku），同其他接口中的outer_id 、out_id、out_sku_sn、outer_sku_sn、out_sku_id、outer_sku_id 都为商家编码（sku维度）。
     */
    @JsonProperty("outer_id")
    private String outerId;
    /**
     * 规格名称
     */
    @JsonProperty("spec")
    private String spec;
    /**
     * sku库存
     */
    @JsonProperty("sku_quantity")
    private int skuQuantity;
}
