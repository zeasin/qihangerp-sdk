package cn.qihangerp.open.dou.request;

import lombok.Data;

import java.util.List;

@Data
public class WaybillCodeRequest {
    private String logistics_code;
    private Long user_id;
    private String order_channel;//抖音1，其他参考平台文档
    private WaybillAddressInfo sender_info;
    private List<WaybillOrderInfo> order_infos;
}
