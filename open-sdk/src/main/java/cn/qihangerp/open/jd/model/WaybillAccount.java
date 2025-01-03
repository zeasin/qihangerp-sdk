package cn.qihangerp.open.jd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class WaybillAccount {

    /**
     * address
     */
    @JsonProperty("address")
    private AddressBean address;
    /**
     * amount
     */
    @JsonProperty("amount")
    private int amount;
    /**
     * branchCode
     */
    @JsonProperty("branchCode")
    private String branchCode;
    /**
     * branchName
     */
    @JsonProperty("branchName")
    private String branchName;
    /**
     * operationType
     */
    @JsonProperty("operationType")
    private int operationType;
    /**
     * providerCode
     */
    @JsonProperty("providerCode")
    private String providerCode;
    /**
     * providerId
     */
    @JsonProperty("providerId")
    private int providerId;
    /**
     * providerName
     */
    @JsonProperty("providerName")
    private String providerName;
    /**
     * providerType
     */
    @JsonProperty("providerType")
    private int providerType;
    /**
     * supportCod
     */
    @JsonProperty("supportCod")
    private boolean supportCod;
    /**
     * settlementCode
     */
    @JsonProperty("settlementCode")
    private String settlementCode;
}
