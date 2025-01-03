package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class AfterSale {

    /**
     * orderInfo
     */
    @JsonProperty("order_info")
    private OrderInfoBean orderInfo;
    /**
     * textPart
     */
    @JsonProperty("text_part")
    private TextPartBean textPart;
    /**
     * sellerLogs
     */
    @JsonProperty("seller_logs")
    private List<SellerLogsBean> sellerLogs;
    /**
     * aftersaleInfo
     */
    @JsonProperty("aftersale_info")
    private AftersaleInfoBean aftersaleInfo;
}
