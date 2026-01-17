package cn.qihangerp.open.tao.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
@Data
public class TaoOrderItem {
    @JsonProperty("title")
    private String title;
    @JsonProperty("pic_path")
    private String picPath;
    @JsonProperty("price")
    private String price;
    @JsonProperty("num_iid")
    private String numIid;
    @JsonProperty("sku_id")
    private String skuId;
    @JsonProperty("outer_iid")
    private String outerIid;
    @JsonProperty("outer_sku_id")
    private String outerSkuId;
    @JsonProperty("refund_status")
    private String refundStatus;

    @JsonProperty("status")
    private String status;
    @JsonProperty("oid")
    private String oid;
    @JsonProperty("total_fee")
    private String totalFee;
    @JsonProperty("payment")
    private String payment;
    @JsonProperty("discount_fee")
    private String discountFee;
    @JsonProperty("adjust_fee")
    private String adjustFee;
    @JsonProperty("divide_order_fee")
    private String divideOrderFee;
    @JsonProperty("part_mjz_discount")
    private String partMjzDiscount;
    @JsonProperty("sku_properties_name")
    private String skuPropertiesName;
    @JsonProperty("item_meal_id")
    private String itemMealId;
    @JsonProperty("item_meal_name")
    private String itemMealName;

    @JsonProperty("timeout_action_time")
    private String timeoutActionTime;
    @JsonProperty("item_memo")
    private String itemMemo;


    @JsonProperty("buyer_rate")
    private Boolean buyerRate;
    @JsonProperty("is_service_order")
    private Boolean isServiceOrder;
    @JsonProperty("refund_id")
    private String refundId;
    @JsonProperty("end_time")
    private String endTime;

    @JsonProperty("order_from")
    private String orderFrom;
    @JsonProperty("consign_time")
    private String consignTime;


    @JsonProperty("logistics_company")
    private String logisticsCompany;
    @JsonProperty("invoice_no")
    private String logisticsCode;

    @JsonProperty("service_fee")
    private String service_fee;

    @JsonProperty("has_gift")
    private Boolean hasGift;

    @JsonProperty("is_free_gift")
    private Boolean isFreeGift;

    @JsonProperty("cid")
    private Integer cid;
    @JsonProperty("is_bybt_order")
    private Boolean isBybtOrder;
    @JsonProperty("is_daixiao")
    private Boolean isDaixiao;
    @JsonProperty("is_jzfx")
    private Boolean isJzfx;
    @JsonProperty("is_oversold")
    private Boolean isOversold;
    @JsonProperty("num")
    private Integer num;

    @JsonProperty("seller_rate")
    private Boolean sellerRate;
    @JsonProperty("is_sh_ship")
    private Boolean isShShip;
}
