package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class OrderItem {

    /**
     * goods_name
     */
    @JsonProperty("goods_name")
    private String goods_name;
    /**
     * outer_goods_id
     */
    @JsonProperty("outer_goods_id")
    private String outerGoodsId;
    /**
     * goods_price
     */
    @JsonProperty("goods_price")
    private double goodsPrice;
    /**
     * goods_id
     */
    @JsonProperty("goods_id")
    private long goodsId;
    /**
     * sku_id
     */
    @JsonProperty("sku_id")
    private long skuId;
    /**
     * goods_count
     */
    @JsonProperty("goods_count")
    private int goodsCount;
    /**
     * goods_spec
     */
    @JsonProperty("goods_spec")
    private String goodsSpec;
    /**
     * outer_id
     */
    @JsonProperty("outer_id")
    private String outerId;
    /**
     * goods_img
     */
    @JsonProperty("goods_img")
    private String goodsImg;
}
