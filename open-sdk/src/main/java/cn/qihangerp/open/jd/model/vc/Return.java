package cn.qihangerp.open.jd.model.vc;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Return {

    /**
     * fromDeliverCenterName
     */
    private String fromDeliverCenterName;
    /**
     * providerCode
     */
    private String providerCode;
    /**
     * wareVariety
     */
    private int wareVariety;
    /**
     * totalPrice
     */
    private int totalPrice;
    /**
     * wareHouseContact
     */
    private String wareHouseContact;
    /**
     * toDeliverCenterName
     */
    private String toDeliverCenterName;
    /**
     * returnStateName
     */
    private String returnStateName;
    /**
     * balanceStateName
     */
    private String balanceStateName;
    /**
     * wareHouseAddress
     */
    private String wareHouseAddress;
    /**
     * stockName
     */
    private String stockName;
    /**
     * wareHouseCell
     */
    private String wareHouseCell;
    /**
     * totalNum
     */
    private int totalNum;
    /**
     * returnId
     */
    private int returnId;
    /**
     * providerName
     */
    private String providerName;
    /**
     * createDate
     */
    private long createDate;
}
