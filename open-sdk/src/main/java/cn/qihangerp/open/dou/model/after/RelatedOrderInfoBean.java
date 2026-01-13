package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * RelatedOrderInfoBean
 */
@NoArgsConstructor
@Data
public class RelatedOrderInfoBean {
    /**
     * payAmount
     */
    @JsonProperty("pay_amount")
    private Integer payAmount;
    /**
     * shopSkuCode
     */
    @JsonProperty("shop_sku_code")
    private String shopSkuCode;
    /**
     * logisticsCode
     */
    @JsonProperty("logistics_code")
    private String logisticsCode;
    /**
     * aftersalePayAmount
     */
    @JsonProperty("aftersale_pay_amount")
    private Integer aftersalePayAmount;
    /**
     * aftersaleItemNum
     */
    @JsonProperty("aftersale_item_num")
    private int aftersaleItemNum;
    /**
     * postAmount
     */
    @JsonProperty("post_amount")
    private Integer postAmount;
    /**
     * taxAmount
     */
    @JsonProperty("tax_amount")
    private Integer taxAmount;
    /**
     * productName
     */
    @JsonProperty("product_name")
    private String productName;
    /**
     * productId
     */
    @JsonProperty("product_id")
    private Long productId;
    /**
     * productImage
     */
    @JsonProperty("product_image")
    private String productImage;
    /**
     * givenSkuOrderIds
     */
    @JsonProperty("given_sku_order_ids")
    private List<?> givenSkuOrderIds;
    /**
     * createTime
     */
    @JsonProperty("create_time")
    private Integer createTime;
    /**
     * isOverseaOrder
     */
    @JsonProperty("is_oversea_order")
    private int isOverseaOrder;
    /**
     * aftersalePostAmount
     */
    @JsonProperty("aftersale_post_amount")
    private Integer aftersalePostAmount;
    /**
     * promotionPayAmount
     */
    @JsonProperty("promotion_pay_amount")
    private Integer promotionPayAmount;
    /**
     * price
     */
    @JsonProperty("price")
    private Integer price;
    /**
     * logisticsCompanyName
     */
    @JsonProperty("logistics_company_name")
    private String logisticsCompanyName;
    /**
     * skuOrderId
     */
    @JsonProperty("sku_order_id")
    private String skuOrderId;
    /**
     * orderStatus
     */
    @JsonProperty("order_status")
    private int orderStatus;
    /**
     * itemNum
     */
    @JsonProperty("item_num")
    private int itemNum;
    /**
     * tags
     */
    @JsonProperty("tags")
    private List<TagsBean> tags;
    /**
     * skuSpec
     */
    @JsonProperty("sku_spec")
    private List<SkuSpecBean> skuSpec;
    /**
     * aftersaleTaxAmount
     */
    @JsonProperty("aftersale_tax_amount")
    private int aftersaleTaxAmount;
}
