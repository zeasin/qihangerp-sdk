package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class WaybillPrintData {

    /**
     * orderId
     */
    @JsonProperty("order_id")
    private String orderId;
    /**
     * printData
     */
    @JsonProperty("print_data")
    private String printData;
    /**
     * sign
     */
    @JsonProperty("sign")
    private String sign;
    /**
     * trackNo
     */
    @JsonProperty("track_no")
    private String trackNo;
}
