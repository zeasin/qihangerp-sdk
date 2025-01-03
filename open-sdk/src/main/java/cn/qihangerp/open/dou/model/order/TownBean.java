package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * TownBean
 */
@NoArgsConstructor
@Data
public class TownBean {
    /**
     * name
     */
    @JsonProperty("name")
    private String name;
    /**
     * id
     */
    @JsonProperty("id")
    private String id;
}
