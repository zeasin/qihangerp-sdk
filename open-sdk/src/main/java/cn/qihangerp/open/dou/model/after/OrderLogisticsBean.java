package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * OrderLogisticsBean
 */
@NoArgsConstructor
@Data
public class OrderLogisticsBean {
    /**
     * trackingNo
     */
    @JsonProperty("tracking_no")
    private String trackingNo;
    /**
     * companyName
     */
    @JsonProperty("company_name")
    private String companyName;
    /**
     * companyCode
     */
    @JsonProperty("company_code")
    private String companyCode;
    /**
     * logisticsTime
     */
    @JsonProperty("logistics_time")
    private int logisticsTime;
    /**
     * logisticsState
     */
    @JsonProperty("logistics_state")
    private int logisticsState;
}
