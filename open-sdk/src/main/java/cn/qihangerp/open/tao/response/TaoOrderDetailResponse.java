package cn.qihangerp.open.tao.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class TaoOrderDetailResponse {

    @JsonProperty("adjust_fee")
    private String adjustFee;
    @JsonProperty("alipay_no")
    private String alipayNo;
    @JsonProperty("available_confirm_fee")
    private String availableConfirmFee;
    @JsonProperty("buyer_alipay_no")
    private String buyerAlipayNo;
    @JsonProperty("buyer_email")
    private String buyerEmail;
    @JsonProperty("buyer_nick")
    private String buyerNick;
    @JsonProperty("buyer_open_uid")
    private String buyerOpenUid;
    @JsonProperty("commission_fee")
    private String commissionFee;
    @JsonProperty("consign_time")
    private String consignTime;
    @JsonProperty("created")
    private String created;
    @JsonProperty("discount_fee")
    private String discountFee;
    @JsonProperty("extend_info")
    private String extendInfo;
    @JsonProperty("general_new_presell")
    private Boolean generalNewPresell;
    @JsonProperty("has_post_fee")
    private Boolean hasPostFee;
    @JsonProperty("has_yfx")
    private Boolean hasYfx;
    @JsonProperty("modified")
    private String modified;
    @JsonProperty("new_presell")
    private Boolean newPresell;
    @JsonProperty("no_shipping")
    private Boolean noShipping;
    @JsonProperty("oaid")
    private String oaid;
    @JsonProperty("orders")
    private OrdersDTO orders;
    @JsonProperty("pay_time")
    private String payTime;
    @JsonProperty("payment")
    private String payment;
    @JsonProperty("post_fee")
    private String postFee;
    @JsonProperty("promotion_details")
    private PromotionDetailsDTO promotionDetails;
    @JsonProperty("received_payment")
    private String receivedPayment;
    @JsonProperty("receiver_address")
    private String receiverAddress;
    @JsonProperty("receiver_city")
    private String receiverCity;
    @JsonProperty("receiver_country")
    private String receiverCountry;
    @JsonProperty("receiver_district")
    private String receiverDistrict;
    @JsonProperty("receiver_mobile")
    private String receiverMobile;
    @JsonProperty("receiver_name")
    private String receiverName;
    @JsonProperty("receiver_state")
    private String receiverState;
    @JsonProperty("receiver_town")
    private String receiverTown;
    @JsonProperty("seller_flag")
    private Integer sellerFlag;
    @JsonProperty("sid")
    private String sid;
    @JsonProperty("status")
    private String status;
    @JsonProperty("tid")
    private String tid;
    @JsonProperty("tid_str")
    private String tidStr;
    @JsonProperty("title")
    private String title;
    @JsonProperty("tmall_coupon_fee")
    private Integer tmallCouponFee;
    @JsonProperty("total_fee")
    private String totalFee;
    @JsonProperty("type")
    private String type;
    @JsonProperty("you_xiang")
    private Boolean youXiang;
    @JsonProperty("seller_memo")
    private String sellerMemo;
    @JsonProperty("buyer_memo")
    private String buyerMemo;
    @JsonProperty("buyer_message")
    private String buyerMessage;

    @NoArgsConstructor
    @Data
    public static class PromotionDetailsDTO {
        @JsonProperty("promotion_detail")
        private List<PromotionDetailDTO> promotionDetail;

        @NoArgsConstructor
        @Data
        public static class PromotionDetailDTO {
            @JsonProperty("discount_fee")
            private String discountFee;
            @JsonProperty("id")
            private String id;
            @JsonProperty("kd_child_discount_fee")
            private String kdChildDiscountFee;
            @JsonProperty("kd_discount_fee")
            private String kdDiscountFee;
            @JsonProperty("promotion_desc")
            private String promotionDesc;
            @JsonProperty("promotion_id")
            private String promotionId;
            @JsonProperty("promotion_name")
            private String promotionName;
        }
    }

    @NoArgsConstructor
    @Data
    public static class OrdersDTO {
        @JsonProperty("order")
        private List<TaoOrderItem> order;
//        private List<OrdersDTO.OrderDTO> order;
//        @NoArgsConstructor
//        @Data
//        public static class OrderDTO {
//            @JsonProperty("title")
//            private String title;
//            @JsonProperty("pic_path")
//            private String picPath;
//            @JsonProperty("price")
//            private String price;
//            @JsonProperty("num_iid")
//            private String numIid;
//            @JsonProperty("sku_id")
//            private String skuId;
//            @JsonProperty("outer_iid")
//            private String outerIid;
//            @JsonProperty("outer_sku_id")
//            private String outerSkuId;
//            @JsonProperty("refund_status")
//            private String refundStatus;
//
//            @JsonProperty("status")
//            private String status;
//            @JsonProperty("oid")
//            private String oid;
//            @JsonProperty("total_fee")
//            private String totalFee;
//            @JsonProperty("payment")
//            private String payment;
//            @JsonProperty("discount_fee")
//            private String discountFee;
//            @JsonProperty("adjust_fee")
//            private String adjustFee;
//            @JsonProperty("divide_order_fee")
//            private String divideOrderFee;
//            @JsonProperty("part_mjz_discount")
//            private String partMjzDiscount;
//            @JsonProperty("sku_properties_name")
//            private String skuPropertiesName;
//            @JsonProperty("item_meal_id")
//            private String itemMealId;
//            @JsonProperty("item_meal_name")
//            private String itemMealName;
//
//            @JsonProperty("timeout_action_time")
//            private String timeoutActionTime;
//            @JsonProperty("item_memo")
//            private String itemMemo;
//
//
//            @JsonProperty("buyer_rate")
//            private Boolean buyerRate;
//            @JsonProperty("is_service_order")
//            private Boolean isServiceOrder;
//            @JsonProperty("refund_id")
//            private String refundId;
//            @JsonProperty("end_time")
//            private String endTime;
//
//            @JsonProperty("order_from")
//            private String orderFrom;
//            @JsonProperty("consign_time")
//            private String consignTime;
//
//
//            @JsonProperty("logistics_company")
//            private String logisticsCompany;
//            @JsonProperty("invoice_no")
//            private String logisticsCode;
//
//            @JsonProperty("service_fee")
//            private String service_fee;
//
//            @JsonProperty("has_gift")
//            private Boolean hasGift;
//
//            @JsonProperty("is_free_gift")
//            private Boolean isFreeGift;
//
//            @JsonProperty("cid")
//            private Integer cid;
//            @JsonProperty("is_bybt_order")
//            private Boolean isBybtOrder;
//            @JsonProperty("is_daixiao")
//            private Boolean isDaixiao;
//            @JsonProperty("is_jzfx")
//            private Boolean isJzfx;
//            @JsonProperty("is_oversold")
//            private Boolean isOversold;
//            @JsonProperty("num")
//            private Integer num;
//
//            @JsonProperty("seller_rate")
//            private Boolean sellerRate;
//        }
    }
}
