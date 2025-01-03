package cn.qihangerp.open.jd.model;

public class JiaMi {
    public static String serialize(String phoneNumber) {
        if (phoneNumber != null && phoneNumber.length() >= 7) {
            // 将中间四位替换为星号
            String maskedPhoneNumber = phoneNumber.substring(0, 3) + "****" + phoneNumber.substring(7);
            return maskedPhoneNumber;
        } else {
            return phoneNumber; // 如果长度不足，直接返回原值
        }
    }
}
