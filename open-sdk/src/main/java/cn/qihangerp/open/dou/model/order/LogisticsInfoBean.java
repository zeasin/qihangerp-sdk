package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * LogisticsInfoBean
 */
@NoArgsConstructor
@Data
public class LogisticsInfoBean {
    /**
     * company
     */
    @JsonProperty("company")
    private String company;
    /**
     * companyName
     */
    @JsonProperty("company_name")
    private String companyName;
    /**
     * guaranteeAmount
     */
    @JsonProperty("guarantee_amount")
    private int guaranteeAmount;
    /**
     * spTotalPrice
     */
    @JsonProperty("sp_total_price")
    private int spTotalPrice;
    /**
     * spPrice
     */
    @JsonProperty("sp_price")
    private int spPrice;
    /**
     * spDiscountPrice
     */
    @JsonProperty("sp_discount_price")
    private int spDiscountPrice;
    /**
     * trackingNo
     */
    @JsonProperty("tracking_no")
    private String trackingNo;
    /**
     * shipTime
     */
    @JsonProperty("ship_time")
    private int shipTime;
    /**
     * deliveryId
     */
    @JsonProperty("delivery_id")
    private String deliveryId;
    /**
     * productInfo
     */
    @JsonProperty("product_info")
    private List<ProductInfoBean> productInfo;
    /**
     * hourUpPickupCode
     */
    @JsonProperty("hour_up_pickup_code")
    private String hourUpPickupCode;
}
