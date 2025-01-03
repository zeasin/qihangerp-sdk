package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * MaskPostAddrBean
 */
@NoArgsConstructor
@Data
public class MaskPostAddrBean {
    /**
     * city
     */
    @JsonProperty("city")
    private TownBean city;
    /**
     * town
     */
    @JsonProperty("town")
    private TownBean town;
    /**
     * street
     */
    @JsonProperty("street")
    private TownBean street;
    /**
     * detail
     */
    @JsonProperty("detail")
    private String detail;
    /**
     * province
     */
    @JsonProperty("province")
    private TownBean province;
}
