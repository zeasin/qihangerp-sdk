package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * CardVoucherBean
 */
@NoArgsConstructor
@Data
public class CardVoucherBean {
    /**
     * validDays
     */
    @JsonProperty("valid_days")
    private int validDays;
    /**
     * validStart
     */
    @JsonProperty("valid_start")
    private int validStart;
    /**
     * validEnd
     */
    @JsonProperty("valid_end")
    private int validEnd;
}
