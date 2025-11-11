package cn.qihangerp.open.xhs.response;

import lombok.Data;

import java.util.List;

@Data
public class WaybillTemplate {
    private String id;
    private String cpCode;
    private String brandCode;
    private String templateName;
    private String standardTemplateUrl;
    private String templateType;
    private String customerTemplateUrl;
    private String templateCustomerType;
    private String templateDesc;
    private List<String> customerPrintItems;
}
