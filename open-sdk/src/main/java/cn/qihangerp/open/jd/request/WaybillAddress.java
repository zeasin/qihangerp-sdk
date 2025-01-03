package cn.qihangerp.open.jd.request;

import lombok.Data;

@Data
public class WaybillAddress {
    private Integer provinceId;
    private String provinceName;
    private Integer cityId;
    private String cityName;
    private Integer countryId;
    private String countryName;
    private Integer countrysideId;
    private String countrysideName;
    private String address;
    private String contact;
    private String phone;
    private String mobile;
    private String oaid;
}
