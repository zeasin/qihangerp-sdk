package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * PostAddrBeanX
 */
@NoArgsConstructor
@Data
public class PostAddrBeanX {
    /**
     * province
     */
    @JsonProperty("province")
    private TownBean province;
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
     * encryptDetail
     */
    @JsonProperty("encrypt_detail")
    private String encryptDetail;
}
