package cn.qihangerp.open.xhs.model;

import lombok.Data;

@Data
public class SenderAddress{
    private Address address;
    private String phone;
    private String mobile;
    private String name;
    @Data
    public static class Address{
        private String detail;
        private String province;
        private String city;
        private String district;
        private String town;
    }
}