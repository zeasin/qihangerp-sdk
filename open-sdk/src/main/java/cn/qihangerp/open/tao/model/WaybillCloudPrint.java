package cn.qihangerp.open.tao.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class WaybillCloudPrint {

    @JsonProperty("cp_code")
    private String cpCode;
    @JsonProperty("object_id")
    private String objectId;
    @JsonProperty("print_data")
    private String printData;
    @JsonProperty("real_cp_code")
    private String realCpCode;
    @JsonProperty("waybill_code")
    private String waybillCode;
}
