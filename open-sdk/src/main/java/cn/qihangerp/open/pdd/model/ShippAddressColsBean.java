package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * ShippAddressColsBean
 */
@NoArgsConstructor
@Data
public class ShippAddressColsBean {
    /**
     * city
     */
    @JsonProperty("city")
    private String city;
    /**
     * country
     */
    @JsonProperty("country")
    private String country;
    /**
     * detail
     */
    @JsonProperty("detail")
    private String detail;
    /**
     * district
     */
    @JsonProperty("district")
    private String district;
    /**
     * province
     */
    @JsonProperty("province")
    private String province;
}
