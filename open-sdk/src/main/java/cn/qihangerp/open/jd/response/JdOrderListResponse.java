package cn.qihangerp.open.jd.response;

import cn.qihangerp.open.jd.model.ConsigneeInfoDTO;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class JdOrderListResponse {

    @JsonProperty("orderSellerPrice")
    private String orderSellerPrice;
    @JsonProperty("orderType")
    private String orderType;
    @JsonProperty("logisticsId")
    private String logisticsId;
    @JsonProperty("orderId")
    private String orderId;
    @JsonProperty("paymentConfirmTime")
    private String paymentConfirmTime;
    @JsonProperty("orderStateRemark")
    private String orderStateRemark;
    @JsonProperty("orderState")
    private String orderState;
    @JsonProperty("payType")
    private String payType;
    @JsonProperty("itemInfoList")
    private List<ItemInfoListDTO> itemInfoList;
    @JsonProperty("waybill")
    private String waybill;
    @JsonProperty("pin")
    private String pin;
    @JsonProperty("modified")
    private String modified;
    @JsonProperty("freightPrice")
    private String freightPrice;
    @JsonProperty("balanceUsed")
    private String balanceUsed;
    @JsonProperty("orderTotalPrice")
    private String orderTotalPrice;
    @JsonProperty("idSopShipmenttype")
    private Integer idSopShipmenttype;
    @JsonProperty("sellerDiscount")
    private String sellerDiscount;
    @JsonProperty("venderRemark")
    private String venderRemark;
    @JsonProperty("couponDetailList")
    private List<CouponDetailListDTO> couponDetailList;
    @JsonProperty("venderId")
    private String venderId;
    @JsonProperty("orderRemark")
    private String orderRemark;
    @JsonProperty("popSignMap")
    private String popSignMap;
    @JsonProperty("orderEndTime")
    private String orderEndTime;
    @JsonProperty("vatInfo")
    private VatInfoDTO vatInfo;
    @JsonProperty("invoiceInfo")
    private String invoiceInfo;
    @JsonProperty("orderSource")
    private String orderSource;
    @JsonProperty("deliveryType")
    private String deliveryType;
    @JsonProperty("storeId")
    private String storeId;
    @JsonProperty("orderPayment")
    private String orderPayment;
    @JsonProperty("consigneeInfo")
    private ConsigneeInfoDTO consigneeInfo;
    @JsonProperty("returnOrder")
    private String returnOrder;
    @JsonProperty("invoiceEasyInfo")
    private InvoiceEasyInfoDTO invoiceEasyInfo;
    @JsonProperty("storeOrder")
    private String storeOrder;
    @JsonProperty("realPin")
    private String realPin;
    @JsonProperty("orderStartTime")
    private String orderStartTime;

    @NoArgsConstructor
    @Data
    public static class VatInfoDTO {
    }



    @NoArgsConstructor
    @Data
    public static class InvoiceEasyInfoDTO {
        @JsonProperty("invoiceType")
        private String invoiceType;
        @JsonProperty("invoiceContentId")
        private String invoiceContentId;
        @JsonProperty("invoiceTitle")
        private String invoiceTitle;
    }

    @NoArgsConstructor
    @Data
    public static class ItemInfoListDTO {
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

    @NoArgsConstructor
    @Data
    public static class CouponDetailListDTO {
        @JsonProperty("orderId")
        private String orderId;
        @JsonProperty("couponType")
        private String couponType;
        @JsonProperty("couponPrice")
        private String couponPrice;
        @JsonProperty("skuId")
        private String skuId;
    }
}
