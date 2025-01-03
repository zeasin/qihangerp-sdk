package cn.qihangerp.open.pdd.request;

import lombok.Data;

@Data
public class WaybillCloudPrintApplyNewRequestContact {
    private String mobile;
    private String name;
    private String phone;
    private WaybillCloudPrintApplyNewRequestContactAddress address;
}
