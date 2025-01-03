package cn.qihangerp.open.dou.request;

import lombok.Data;

@Data
public class WaybillOrderItem {
    private String item_name;
    private String item_specs;
    private Integer item_count;
    private Integer item_volume;
    private Integer item_weight;
    private Integer item_net_weight;

}
