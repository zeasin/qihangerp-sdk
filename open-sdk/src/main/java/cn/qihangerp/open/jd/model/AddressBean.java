package cn.qihangerp.open.jd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * AddressBean
 */
@NoArgsConstructor
@Data
public class AddressBean {
    /**
     * address
     */
    @JsonProperty("address")
    private String address;
    /**
     * cityId
     */
    @JsonProperty("cityId")
    private int cityId;
    /**
     * cityName
     */
    @JsonProperty("cityName")
    private String cityName;
    /**
     * countryId
     */
    @JsonProperty("countryId")
    private int countryId;
    /**
     * countryName
     */
    @JsonProperty("countryName")
    private String countryName;
    /**
     * countrysideId
     */
    @JsonProperty("countrysideId")
    private int countrysideId;
    /**
     * countrysideName
     */
    @JsonProperty("countrysideName")
    private String countrysideName;
    /**
     * provinceId
     */
    @JsonProperty("provinceId")
    private int provinceId;
    /**
     * provinceName
     */
    @JsonProperty("provinceName")
    private String provinceName;
}
