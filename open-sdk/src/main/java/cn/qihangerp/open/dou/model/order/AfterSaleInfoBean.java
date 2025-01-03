package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * AfterSaleInfoBean
 */
@NoArgsConstructor
@Data
public class AfterSaleInfoBean {
    /**
     * afterSaleStatus
     */
    @JsonProperty("after_sale_status")
    private int afterSaleStatus;
    /**
     * afterSaleType
     */
    @JsonProperty("after_sale_type")
    private int afterSaleType;
    /**
     * refundStatus
     */
    @JsonProperty("refund_status")
    private int refundStatus;
}
