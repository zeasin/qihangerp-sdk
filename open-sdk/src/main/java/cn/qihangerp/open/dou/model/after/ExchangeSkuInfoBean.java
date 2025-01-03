package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * ExchangeSkuInfoBean
 */
@NoArgsConstructor
@Data
public class ExchangeSkuInfoBean {
    /**
     * outWarehouseId
     */
    @JsonProperty("out_warehouse_id")
    private String outWarehouseId;
    /**
     * supplierId
     */
    @JsonProperty("supplier_id")
    private String supplierId;
    /**
     * name
     */
    @JsonProperty("name")
    private String name;
    /**
     * price
     */
    @JsonProperty("price")
    private String price;
    /**
     * specDesc
     */
    @JsonProperty("spec_desc")
    private String specDesc;
    /**
     * skuId
     */
    @JsonProperty("sku_id")
    private String skuId;
    /**
     * code
     */
    @JsonProperty("code")
    private String code;
    /**
     * num
     */
    @JsonProperty("num")
    private int num;
    /**
     * outSkuId
     */
    @JsonProperty("out_sku_id")
    private String outSkuId;
    /**
     * url
     */
    @JsonProperty("url")
    private String url;
}
