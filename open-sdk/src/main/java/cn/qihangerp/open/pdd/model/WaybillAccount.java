package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class WaybillAccount {

    /**
     * branchAccountCols
     */
    @JsonProperty("branch_account_cols")
    private List<BranchAccountColsBean> branchAccountCols;
    /**
     * wpCode
     */
    @JsonProperty("wp_code")
    private String wpCode;
    /**
     * wpType
     */
    @JsonProperty("wp_type")
    private int wpType;
}
