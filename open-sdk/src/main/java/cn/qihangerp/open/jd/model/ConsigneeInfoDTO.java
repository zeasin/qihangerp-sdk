package cn.qihangerp.open.jd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ConsigneeInfoDTO {
    @JsonProperty("town")
    private String town;
    @JsonProperty("city")
    private String city;
    @JsonProperty("county")
    private String county;
    @JsonProperty("mobile")
    private String mobile;
    @JsonProperty("telephone")
    private String telephone;
    @JsonProperty("cityId")
    private String cityId;
    @JsonProperty("townId")
    private String townId;
    @JsonProperty("provinceId")
    private String provinceId;
    @JsonProperty("province")
    private String province;
    @JsonProperty("countyId")
    private String countyId;
    @JsonProperty("fullAddress")
    private String fullAddress;
    @JsonProperty("fullname")
    private String fullname;
}
