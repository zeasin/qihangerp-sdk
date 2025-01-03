package cn.qihangerp.open.tao.request;

import lombok.Data;

import java.util.List;

@Data
public class WaybillCloudPrintApplyNewRequest {
    private String cp_code;
    private WaybillCloudPrintApplyNewRequestSender sender;
    private List<WaybillCloudPrintApplyNewRequestTradeOrderInfoDto> trade_order_info_dtos;
}
