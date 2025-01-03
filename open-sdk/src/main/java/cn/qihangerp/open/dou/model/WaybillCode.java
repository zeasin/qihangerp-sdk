package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class WaybillCode {

    /**
     * company
     */
    @JsonProperty("company")
    private String company;
    /**
     * extraResp
     */
    @JsonProperty("extra_resp")
    private String extraResp;
    /**
     * hintMsg
     */
    @JsonProperty("hint_msg")
    private String hintMsg;
    /**
     * orderChannel
     */
    @JsonProperty("order_channel")
    private String orderChannel;
    /**
     * orderId
     */
    @JsonProperty("order_id")
    private String orderId;
    /**
     * packId
     */
    @JsonProperty("pack_id")
    private String packId;
    /**
     * packageCenterCode
     */
    @JsonProperty("package_center_code")
    private String packageCenterCode;
    /**
     * packageCenterName
     */
    @JsonProperty("package_center_name")
    private String packageCenterName;
    /**
     * shortAddressCode
     */
    @JsonProperty("short_address_code")
    private String shortAddressCode;
    /**
     * shortAddressName
     */
    @JsonProperty("short_address_name")
    private String shortAddressName;
    /**
     * sortCode
     */
    @JsonProperty("sort_code")
    private String sortCode;
    /**
     * trackNo
     */
    @JsonProperty("track_no")
    private String trackNo;
}
