package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class SellPropertiesBean {
    @JsonProperty("value_spec_detail_id")
    private String valueSpecDetailId;

    @JsonProperty("value_name")
    private String valueName;
}
