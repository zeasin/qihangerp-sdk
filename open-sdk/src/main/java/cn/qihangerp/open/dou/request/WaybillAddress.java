package cn.qihangerp.open.dou.request;

import lombok.Data;

@Data
public class WaybillAddress {
    private String country_code;//国家编码（默认CHN，目前只有国内业务）
    private String province_name;
    private String province_code;
    private String city_name;
    private String city_code;
    private String district_name;
    private String district_code;
    private String street_name;
    private String street_code;
    private String detail_address;
}
