package cn.qihangerp.open.pdd.model;

import lombok.Data;

@Data
public class WaybillCodeModule {
    private String object_id;//请求id
    private String parent_waybill_code;//快运母单号
    private String print_data;//面单信息
    private String waybill_code;//面单号
}
