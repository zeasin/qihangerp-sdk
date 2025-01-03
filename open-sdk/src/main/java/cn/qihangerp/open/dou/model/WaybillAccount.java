package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class WaybillAccount {

    /**
     * allocatedQuantity
     */
    @JsonProperty("allocated_quantity")
    private int allocatedQuantity;
    /**
     * amount
     */
    @JsonProperty("amount")
    private String amount;
    /**
     * cancelledQuantity
     */
    @JsonProperty("cancelled_quantity")
    private int cancelledQuantity;
    /**
     * company
     */
    @JsonProperty("company")
    private String company;
    /**
     * companyType
     */
    @JsonProperty("company_type")
    private int companyType;
    /**
     * netsiteCode
     */
    @JsonProperty("netsite_code")
    private String netsiteCode;
    /**
     * netsiteName
     */
    @JsonProperty("netsite_name")
    private String netsiteName;
    /**
     * recycledQuantity
     */
    @JsonProperty("recycled_quantity")
    private int recycledQuantity;
    /**
     * senderAddress
     */
    @JsonProperty("sender_address")
    private List<SenderAddressBean> senderAddress;
}
