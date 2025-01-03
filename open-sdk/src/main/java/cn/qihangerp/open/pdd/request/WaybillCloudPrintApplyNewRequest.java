package cn.qihangerp.open.pdd.request;

import lombok.Data;

import java.util.List;

@Data
public class WaybillCloudPrintApplyNewRequest {
    private Boolean need_encrypt;
    private String wp_code;
    private WaybillCloudPrintApplyNewRequestContact sender;
    private List<WaybillCloudPrintApplyNewRequestTradeOrderInfoDto> trade_order_info_dtos;
}
