package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * SenderAddressBean
 */
@NoArgsConstructor
@Data
public class SenderAddressBean {
    /**
     * cityName
     */
    @JsonProperty("city_name")
    private String cityName;
    /**
     * detailAddress
     */
    @JsonProperty("detail_address")
    private String detailAddress;
    /**
     * districtName
     */
    @JsonProperty("district_name")
    private String districtName;
    /**
     * provinceName
     */
    @JsonProperty("province_name")
    private String provinceName;
    /**
     * streetName
     */
    @JsonProperty("street_name")
    private String streetName;
}
