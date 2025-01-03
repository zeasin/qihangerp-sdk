package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * TextPartBean
 */
@NoArgsConstructor
@Data
public class TextPartBean {
    /**
     * aftersaleRefundTypeText
     */
    @JsonProperty("aftersale_refund_type_text")
    private String aftersaleRefundTypeText;
    /**
     * reasonText
     */
    @JsonProperty("reason_text")
    private String reasonText;
    /**
     * badItemText
     */
    @JsonProperty("bad_item_text")
    private String badItemText;
    /**
     * arbitrateStatusText
     */
    @JsonProperty("arbitrate_status_text")
    private String arbitrateStatusText;
    /**
     * logisticsText
     */
    @JsonProperty("logistics_text")
    private String logisticsText;
    /**
     * aftersaleStatusText
     */
    @JsonProperty("aftersale_status_text")
    private String aftersaleStatusText;
    /**
     * aftersaleTypeText
     */
    @JsonProperty("aftersale_type_text")
    private String aftersaleTypeText;
    /**
     * returnLogisticsText
     */
    @JsonProperty("return_logistics_text")
    private String returnLogisticsText;
}
