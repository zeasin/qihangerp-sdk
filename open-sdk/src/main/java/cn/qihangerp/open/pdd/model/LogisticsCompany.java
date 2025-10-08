package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class LogisticsCompany {
    @JsonProperty("logistics_company")
    private String logisticsCompany;
    private Integer id;//
    private String code;//
    private Integer available;//
}
