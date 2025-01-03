package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * AccountListBean
 */
@NoArgsConstructor
@Data
public class AccountListBean {
    /**
     * accountInfo
     */
    @JsonProperty("account_info")
    private List<?> accountInfo;
}
