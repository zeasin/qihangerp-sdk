package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * BranchAccountColsBean
 */
@NoArgsConstructor
@Data
public class BranchAccountColsBean {
    /**
     * allocatedQuantity
     */
    @JsonProperty("allocated_quantity")
    private int allocatedQuantity;
    /**
     * cancelQuantity
     */
    @JsonProperty("cancel_quantity")
    private int cancelQuantity;
    /**
     * quantity
     */
    @JsonProperty("quantity")
    private int quantity;
    /**
     * recycledQuantity
     */
    @JsonProperty("recycled_quantity")
    private int recycledQuantity;
    @JsonProperty("branch_code")
    private String branchCode;
    @JsonProperty("branch_name")
    private String branchName;
    /**
     * serviceInfoCols
     */
    @JsonProperty("service_info_cols")
    private List<?> serviceInfoCols;
    /**
     * shippAddressCols
     */
    @JsonProperty("shipp_address_cols")
    private List<ShippAddressColsBean> shippAddressCols;
}
