package cn.qihangerp.open.jd.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class JdOrderDetailResponse {


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
    private List<JdOrderItemResponse> itemInfoList;
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
    @JsonProperty("directParentOrderId")
    private String directParentOrderId;
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
    @JsonProperty("parentOrderId")
    private String parentOrderId;
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
    public static class ConsigneeInfoDTO {
        @JsonProperty("town")
        private String town;
        @JsonProperty("city")
        private String city;
        @JsonProperty("county")
        private String county;
        @JsonProperty("mobile")
        private String mobile;
        @JsonProperty("telephone")
        private String telephone;
        @JsonProperty("cityId")
        private String cityId;
        @JsonProperty("townId")
        private String townId;
        @JsonProperty("provinceId")
        private String provinceId;
        @JsonProperty("province")
        private String province;
        @JsonProperty("countyId")
        private String countyId;
        @JsonProperty("fullAddress")
        private String fullAddress;
        @JsonProperty("fullname")
        private String fullname;
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
