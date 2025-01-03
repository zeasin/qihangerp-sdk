package cn.qihangerp.open.tao.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class WaybillBranchAccountList {

    @JsonProperty("branch_account_cols")
    private BranchAccountColsDTO branchAccountCols;
    @JsonProperty("cp_code")
    private String cpCode;
    @JsonProperty("cp_type")
    private Integer cpType;

    @NoArgsConstructor
    @Data
    public static class BranchAccountColsDTO {
        @JsonProperty("waybill_branch_account")
        private List<WaybillBranchAccountDTO> waybillBranchAccount;

        @NoArgsConstructor
        @Data
        public static class WaybillBranchAccountDTO {
            @JsonProperty("allocated_quantity")
            private Integer allocatedQuantity;
            @JsonProperty("branch_code")
            private String branchCode;
            @JsonProperty("branch_name")
            private String branchName;
            @JsonProperty("cancel_quantity")
            private Integer cancelQuantity;
            @JsonProperty("print_quantity")
            private Integer printQuantity;
            @JsonProperty("quantity")
            private Integer quantity;
            @JsonProperty("shipp_address_cols")
            private ShippAddressColsDTO shippAddressCols;

            @NoArgsConstructor
            @Data
            public static class ShippAddressColsDTO {
                @JsonProperty("waybill_address")
                private List<WaybillAddressDTO> waybillAddress;

                @NoArgsConstructor
                @Data
                public static class WaybillAddressDTO {
                    @JsonProperty("address_detail")
                    private String addressDetail;
                    @JsonProperty("area")
                    private String area;
                    @JsonProperty("city")
                    private String city;
                    @JsonProperty("province")
                    private String province;
                    @JsonProperty("waybill_address_id")
                    private Integer waybillAddressId;
                }
            }
        }
    }
}
