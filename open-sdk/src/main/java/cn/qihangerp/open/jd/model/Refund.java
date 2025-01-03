package cn.qihangerp.open.jd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Refund {

    /**
     * applyRefundSum
     */
    @JsonProperty("applyRefundSum")
    private Double applyRefundSum;
    /**
     * applyTime
     */
    @JsonProperty("applyTime")
    private String applyTime;
    /**
     * buyerId
     */
    @JsonProperty("buyerId")
    private String buyerId;
    /**
     * buyerName
     */
    @JsonProperty("buyerName")
    private String buyerName;
    /**
     * checkRemark
     */
    @JsonProperty("checkRemark")
    private String checkRemark;
    /**
     * checkTime
     */
    @JsonProperty("checkTime")
    private String checkTime;
    /**
     * checkUserName
     */
    @JsonProperty("checkUserName")
    private String checkUserName;
    /**
     * id
     */
    @JsonProperty("id")
    private Long id;
    /**
     * orderId
     */
    @JsonProperty("orderId")
    private String orderId;
    /**
     * partRefundType
     */
    @JsonProperty("partRefundType")
    private int partRefundType;
    /**
     * reason
     */
    @JsonProperty("reason")
    private String reason;
    /**
     * status
     */
    @JsonProperty("status")
    private int status;
    /**
     * systemId
     */
    @JsonProperty("systemId")
    private int systemId;
}
