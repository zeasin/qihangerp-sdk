package cn.qihangerp.open.pdd.request;

import lombok.Data;

import java.util.List;

@Data
public class PackageInfo {
    private List<PackageInfoItem> items;
}
