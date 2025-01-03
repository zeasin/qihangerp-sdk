package cn.qihangerp.open.dou.request;

import lombok.Data;

import java.util.List;

@Data
public class WaybillOrderInfo {
    private String order_id;
    private String pack_id;
    private WaybillAddressInfo receiver_info;
    private List<WaybillOrderItem> items;

}
