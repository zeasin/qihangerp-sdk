package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * AftersaleInfoBean
 */
@NoArgsConstructor
@Data
public class AftersaleInfoBean {
    /**
     * refundType
     */
    @JsonProperty("refund_type")
    private int refundType;
    /**
     * riskDecisionDescription
     */
    @JsonProperty("risk_decision_description")
    private String riskDecisionDescription;
    /**
     * refundStatus
     */
    @JsonProperty("refund_status")
    private int refundStatus;
    /**
     * gotPkg
     */
    @JsonProperty("got_pkg")
    private int gotPkg;
    /**
     * reasonSecondLabels
     */
    @JsonProperty("reason_second_labels")
    private List<?> reasonSecondLabels;
    /**
     * refundAmount
     */
    @JsonProperty("refund_amount")
    private int refundAmount;
    /**
     * returnLogisticsCode
     */
    @JsonProperty("return_logistics_code")
    private String returnLogisticsCode;
    /**
     * riskDecisionCode
     */
    @JsonProperty("risk_decision_code")
    private int riskDecisionCode;
    /**
     * riskDecisionReason
     */
    @JsonProperty("risk_decision_reason")
    private String riskDecisionReason;
    /**
     * autoAuditBits
     */
    @JsonProperty("auto_audit_bits")
    private List<?> autoAuditBits;
    /**
     * aftersaleOrderType
     */
    @JsonProperty("aftersale_order_type")
    private int aftersaleOrderType;
    /**
     * aftersaleType
     */
    @JsonProperty("aftersale_type")
    private int aftersaleType;
    /**
     * refundPostAmount
     */
    @JsonProperty("refund_post_amount")
    private int refundPostAmount;
    /**
     * aftersaleId
     */
    @JsonProperty("aftersale_id")
    private String aftersaleId;
    /**
     * partType
     */
    @JsonProperty("part_type")
    private int partType;
    /**
     * arbitrateStatus
     */
    @JsonProperty("arbitrate_status")
    private int arbitrateStatus;
    /**
     * returnPromotionAmount
     */
    @JsonProperty("return_promotion_amount")
    private int returnPromotionAmount;
    /**
     * aftersaleSubType
     */
    @JsonProperty("aftersale_sub_type")
    private int aftersaleSubType;
    /**
     * relatedId
     */
    @JsonProperty("related_id")
    private String relatedId;
    /**
     * exchangeSkuInfo
     */
    @JsonProperty("exchange_sku_info")
    private ExchangeSkuInfoBean exchangeSkuInfo;
    /**
     * remark
     */
    @JsonProperty("remark")
    private String remark;
    /**
     * orderLogistics
     */
    @JsonProperty("order_logistics")
    private List<OrderLogisticsBean> orderLogistics;
    /**
     * isAgreeRefuseSign
     */
    @JsonProperty("is_agree_refuse_sign")
    private int isAgreeRefuseSign;
    /**
     * createTime
     */
    @JsonProperty("create_time")
    private int createTime;
    /**
     * aftersaleNum
     */
    @JsonProperty("aftersale_num")
    private int aftersaleNum;
    /**
     * aftersaleRefundType
     */
    @JsonProperty("aftersale_refund_type")
    private int aftersaleRefundType;
    /**
     * refundTaxAmount
     */
    @JsonProperty("refund_tax_amount")
    private int refundTaxAmount;
    /**
     * arbitrateBlame
     */
    @JsonProperty("arbitrate_blame")
    private int arbitrateBlame;
    /**
     * exchangeLogisticsCompanyName
     */
    @JsonProperty("exchange_logistics_company_name")
    private String exchangeLogisticsCompanyName;
    /**
     * aftersaleTags
     */
    @JsonProperty("aftersale_tags")
    private List<AftersaleTagsBean> aftersaleTags;
    /**
     * storeName
     */
    @JsonProperty("store_name")
    private String storeName;
    /**
     * updateTime
     */
    @JsonProperty("update_time")
    private int updateTime;
    /**
     * applyTime
     */
    @JsonProperty("apply_time")
    private int applyTime;
    /**
     * leftUrgeSmsCount
     */
    @JsonProperty("left_urge_sms_count")
    private int leftUrgeSmsCount;
    /**
     * returnLogisticsCompanyName
     */
    @JsonProperty("return_logistics_company_name")
    private String returnLogisticsCompanyName;
    /**
     * aftersaleStatusToFinalTime
     */
    @JsonProperty("aftersale_status_to_final_time")
    private int aftersaleStatusToFinalTime;
    /**
     * statusDeadline
     */
    @JsonProperty("status_deadline")
    private int statusDeadline;
    /**
     * storeId
     */
    @JsonProperty("store_id")
    private int storeId;
    /**
     * aftersaleStatus
     */
    @JsonProperty("aftersale_status")
    private int aftersaleStatus;
}
