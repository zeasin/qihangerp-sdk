package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * UserTagUiBean
 */
@NoArgsConstructor
@Data
public class UserTagUiBean {
    /**
     * text
     */
    @JsonProperty("text")
    private String text;
    /**
     * key
     */
    @JsonProperty("key")
    private String key;
}
