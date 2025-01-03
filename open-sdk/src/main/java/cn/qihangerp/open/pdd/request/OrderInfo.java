package cn.qihangerp.open.pdd.request;

import lombok.Data;

@Data
public class OrderInfo {
    private String order_channels_type;
    private String[] trade_order_list;
}
