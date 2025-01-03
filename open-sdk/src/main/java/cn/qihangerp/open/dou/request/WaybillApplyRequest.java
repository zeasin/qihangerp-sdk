package cn.qihangerp.open.dou.request;

import lombok.Data;

import java.util.List;

@Data
public class WaybillApplyRequest {
    private List<WaybillApply> waybill_applies;
}
