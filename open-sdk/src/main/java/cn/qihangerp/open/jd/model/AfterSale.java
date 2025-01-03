package cn.qihangerp.open.jd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class AfterSale {

    /**
     * actualPayPrice
     */
    @JsonProperty("actualPayPrice")
    private double actualPayPrice;
    /**
     * applyId
     */
    @JsonProperty("applyId")
    private Long applyId;
    /**
     * applyTime
     */
    @JsonProperty("applyTime")
    private Long applyTime;
    /**
     * approveName
     */
    @JsonProperty("approveName")
    private String approveName;
    /**
     * approvePin
     */
    @JsonProperty("approvePin")
    private String approvePin;
    /**
     * approveResult
     */
    @JsonProperty("approveResult")
    private int approveResult;
    /**
     * approveResultName
     */
    @JsonProperty("approveResultName")
    private String approveResultName;
    /**
     * approveTime
     */
    @JsonProperty("approveTime")
    private long approveTime;
    /**
     * customerExpect
     */
    @JsonProperty("customerExpect")
    private int customerExpect;
    /**
     * customerExpectName
     */
    @JsonProperty("customerExpectName")
    private String customerExpectName;
    /**
     * customerGrade
     */
    @JsonProperty("customerGrade")
    private int customerGrade;
    /**
     * customerName
     */
    @JsonProperty("customerName")
    private String customerName;
    /**
     * customerPin
     */
    @JsonProperty("customerPin")
    private String customerPin;
    /**
     * customerTel
     */
    @JsonProperty("customerTel")
    private String customerTel;
    /**
     * orderId
     */
    @JsonProperty("orderId")
    private Long orderId;
    /**
     * orderType
     */
    @JsonProperty("orderType")
    private Integer orderType;
    /**
     * orderTypeName
     */
    @JsonProperty("orderTypeName")
    private String orderTypeName;
    /**
     * pickwareAddress
     */
    @JsonProperty("pickwareAddress")
    private String pickwareAddress;
    /**
     * pickwareType
     */
    @JsonProperty("pickwareType")
    private int pickwareType;
    /**
     * platformSrc
     */
    @JsonProperty("platformSrc")
    private int platformSrc;
    /**
     * platformSrcName
     */
    @JsonProperty("platformSrcName")
    private String platformSrcName;
    /**
     * serviceCount
     */
    @JsonProperty("serviceCount")
    private int serviceCount;
    /**
     * serviceId
     */
    @JsonProperty("serviceId")
    private Long serviceId;
    /**
     * serviceStatus
     */
    @JsonProperty("serviceStatus")
    private int serviceStatus;
    /**
     * serviceStatusName
     */
    @JsonProperty("serviceStatusName")
    private String serviceStatusName;
    /**
     * skuId
     */
    @JsonProperty("skuId")
    private long skuId;
    /**
     * skuType
     */
    @JsonProperty("skuType")
    private int skuType;
    /**
     * skuTypeName
     */
    @JsonProperty("skuTypeName")
    private String skuTypeName;
    /**
     * skuUuid
     */
    @JsonProperty("skuUuid")
    private String skuUuid;
    /**
     * updateDate
     */
    @JsonProperty("updateDate")
    private long updateDate;
    /**
     * wareName
     */
    @JsonProperty("wareName")
    private String wareName;
    /**
     * wareType
     */
    @JsonProperty("wareType")
    private int wareType;
    /**
     * wareTypeName
     */
    @JsonProperty("wareTypeName")
    private String wareTypeName;
}
