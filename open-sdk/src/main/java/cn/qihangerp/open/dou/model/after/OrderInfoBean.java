package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * OrderInfoBean
 */
@NoArgsConstructor
@Data
public class OrderInfoBean {
    /**
     * shopOrderId
     */
    @JsonProperty("shop_order_id")
    private String shopOrderId;
    /**
     * relatedOrderInfo
     */
    @JsonProperty("related_order_info")
    private List<RelatedOrderInfoBean> relatedOrderInfo;
    /**
     * orderFlag
     */
    @JsonProperty("order_flag")
    private int orderFlag;
}
