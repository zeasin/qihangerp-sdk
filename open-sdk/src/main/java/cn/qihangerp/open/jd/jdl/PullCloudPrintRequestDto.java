package cn.qihangerp.open.jd.jdl;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class PullCloudPrintRequestDto {
    private String cpCode;
    private String objectId;
    private Map<String,String> parameters;
    private List<WayBillInfo> wayBillInfos;
}
