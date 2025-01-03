package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * ProductInfoBean
 */
@NoArgsConstructor
@Data
public class ProductInfoBean {
    /**
     * price
     */
    @JsonProperty("price")
    private int price;
    /**
     * productId
     */
    @JsonProperty("product_id")
    private long productId;
    /**
     * skuOrderId
     */
    @JsonProperty("sku_order_id")
    private String skuOrderId;
    /**
     * productName
     */
    @JsonProperty("product_name")
    private String productName;
    /**
     * outerSkuId
     */
    @JsonProperty("outer_sku_id")
    private String outerSkuId;
    /**
     * skuId
     */
    @JsonProperty("sku_id")
    private long skuId;
    /**
     * skuSpecs
     */
    @JsonProperty("sku_specs")
    private List<SkuSpecsBean> skuSpecs;
    /**
     * productCount
     */
    @JsonProperty("product_count")
    private int productCount;
    /**
     * productIdStr
     */
    @JsonProperty("product_id_str")
    private String productIdStr;
}
