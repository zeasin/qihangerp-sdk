package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class AfterSale {

    /**
     * afterSaleReason
     */
    @JsonProperty("after_sale_reason")
    private String afterSaleReason;
    /**
     * afterSalesStatus
     */
    @JsonProperty("after_sales_status")
    private int afterSalesStatus;
    /**
     * afterSalesType
     */
    @JsonProperty("after_sales_type")
    private int afterSalesType;
    /**
     * confirmTime
     */
    @JsonProperty("confirm_time")
    private String confirmTime;
    /**
     * createdTime
     */
    @JsonProperty("created_time")
    private String createdTime;
    /**
     * discountAmount
     */
    @JsonProperty("discount_amount")
    private String discountAmount;
    /**
     * disputeRefundStatus
     */
    @JsonProperty("dispute_refund_status")
    private int disputeRefundStatus;
    /**
     * goodImage
     */
    @JsonProperty("good_image")
    private String goodImage;
    /**
     * goodsId
     */
    @JsonProperty("goods_id")
    private Long goodsId;
    /**
     * goodsName
     */
    @JsonProperty("goods_name")
    private String goodsName;
    /**
     * goodsNumber
     */
    @JsonProperty("goods_number")
    private Integer goodsNumber;
    /**
     * goodsPrice
     */
    @JsonProperty("goods_price")
    private String goodsPrice;
    /**
     * id
     */
    @JsonProperty("id")
    private Long id;
    /**
     * orderAmount
     */
    @JsonProperty("order_amount")
    private Double orderAmount;
    /**
     * orderSn
     */
    @JsonProperty("order_sn")
    private String orderSn;
    /**
     * outerGoodsId
     */
    @JsonProperty("outer_goods_id")
    private String outerGoodsId;
    /**
     * outerId
     */
    @JsonProperty("outer_id")
    private String outerId;
    /**
     * refundAmount
     */
    @JsonProperty("refund_amount")
    private Double refundAmount;
    /**
     * refundOperatorRole
     */
    @JsonProperty("refund_operator_role")
    private int refundOperatorRole;
    /**
     * shippingName
     */
    @JsonProperty("shipping_name")
    private String shippingName;
    /**
     * skuId
     */
    @JsonProperty("sku_id")
    private String skuId;
    /**
     * speedRefundFlag
     */
    @JsonProperty("speed_refund_flag")
    private int speedRefundFlag;
    /**
     * speedRefundStatus
     */
    @JsonProperty("speed_refund_status")
    private String speedRefundStatus;
    /**
     * trackingNumber
     */
    @JsonProperty("tracking_number")
    private String trackingNumber;
    @JsonProperty("express_no")
    private String expressNo;
    /**
     * updatedTime
     */
    @JsonProperty("updated_time")
    private String updatedTime;
    /**
     * userShippingStatus
     */
    @JsonProperty("user_shipping_status")
    private String userShippingStatus;
    @JsonProperty("shipping_status")
    private String shippingStatus;
}
