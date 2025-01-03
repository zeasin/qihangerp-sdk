package cn.qihangerp.open.pdd.request;

import lombok.Data;

@Data
public class WaybillCloudPrintApplyNewRequestTradeOrderInfoDto {
    private String object_id;
    private String template_url;
    private Long user_id;
    private OrderInfo order_info;
    private PackageInfo package_info;
    private WaybillCloudPrintApplyNewRequestContact recipient;


}
