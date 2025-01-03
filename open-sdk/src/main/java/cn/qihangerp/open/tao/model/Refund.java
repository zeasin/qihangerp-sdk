package cn.qihangerp.open.tao.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Refund {
    @JsonProperty("alipay_no")
    private String alipayNo;
    @JsonProperty("buyer_nick")
    private String buyerNick;
    @JsonProperty("buyer_open_uid")
    private String buyerOpenUid;
    @JsonProperty("created")
    private String created;
    @JsonProperty("desc")
    private String desc;
    @JsonProperty("dispute_type")
    private String disputeType;
    @JsonProperty("end_time")
    private String endTime;
    @JsonProperty("good_status")
    private String goodStatus;
    @JsonProperty("has_good_return")
    private Boolean hasGoodReturn;
    @JsonProperty("modified")
    private String modified;
    @JsonProperty("num")
    private Integer num;

    @JsonProperty("num_iid")
    private Integer numIid;

    @JsonProperty("oid")
    private String oid;

    @JsonProperty("operation_contraint")
    private String operationContraint;

    @JsonProperty("outer_id")
    private String outerId;

    @JsonProperty("price")
    private String price;

    @JsonProperty("order_status")
    private String orderStatus;
    @JsonProperty("ouid")
    private String ouid;
    @JsonProperty("payment")
    private String payment;
    @JsonProperty("reason")
    private String reason;
    @JsonProperty("refund_fee")
    private String refundFee;
    @JsonProperty("refund_id")
    private String refundId;
    @JsonProperty("refund_phase")
    private String refundPhase;
    @JsonProperty("seller_nick")
    private String sellerNick;
    @JsonProperty("sku")
    private String sku;
    @JsonProperty("status")
    private String status;
    @JsonProperty("tid")
    private String tid;
    @JsonProperty("title")
    private String title;
    @JsonProperty("total_fee")
    private String totalFee;
}
