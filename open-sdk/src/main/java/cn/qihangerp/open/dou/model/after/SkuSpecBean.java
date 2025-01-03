package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * SkuSpecBean
 */
@NoArgsConstructor
@Data
public class SkuSpecBean {
    /**
     * value
     */
    @JsonProperty("value")
    private String value;
    /**
     * name
     */
    @JsonProperty("name")
    private String name;
}
