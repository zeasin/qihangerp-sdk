package cn.qihangerp.open.tao.request;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class WaybillCloudPrintApplyNewRequestSender {

    @JsonProperty("address")
    private AddressDTO address;
    @JsonProperty("mobile")
    private String mobile;
    @JsonProperty("name")
    private String name;
    @JsonProperty("phone")
    private String phone;

    @NoArgsConstructor
    @Data
    public static class AddressDTO {
        @JsonProperty("city")
        private String city;
        @JsonProperty("detail")
        private String detail;
        @JsonProperty("district")
        private String district;
        @JsonProperty("province")
        private String province;
        @JsonProperty("town")
        private String town;
    }
}
