package cn.qihangerp.open.pdd.request;

import lombok.Data;

@Data
public class WaybillCloudPrintApplyNewRequestContactAddress {
    private String country;
    private String province;
    private String city;
    private String district;
    private String town;
    private String detail;
}
