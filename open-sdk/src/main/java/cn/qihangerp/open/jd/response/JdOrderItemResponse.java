package cn.qihangerp.open.jd.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@Data
public class JdOrderItemResponse {
    @JsonProperty("wareId")
    private String wareId;
    @JsonProperty("giftPoint")
    private String giftPoint;
    @JsonProperty("skuName")
    private String skuName;
    @JsonProperty("itemTotal")
    private String itemTotal;
    @JsonProperty("outerSkuId")
    private String outerSkuId;
    @JsonProperty("jdPrice")
    private String jdPrice;
    @JsonProperty("invoiceContentId")
    private String invoiceContentId;
    @JsonProperty("productNo")
    private String productNo;
    @JsonProperty("skuId")
    private String skuId;
    @JsonProperty("newStoreId")
    private String newStoreId;
}