package cn.qihangerp.open.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.TreeMap;

public class PDDSignGenerator {

    public static String generateSign(Map<String, String> params, String clientSecret) {
        // 将参数按照键进行排序
        TreeMap<String, String> sortedParams = new TreeMap<>(params);

        // 构建待签名字符串
        StringBuilder signContent = new StringBuilder(clientSecret);
        for (Map.Entry<String, String> entry : sortedParams.entrySet()) {
            signContent.append(entry.getKey()).append(entry.getValue());
        }
        signContent.append(clientSecret);
        // 计算MD5签名
        String sign = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = md.digest(signContent.toString().getBytes());
            StringBuilder hexString = new StringBuilder();
            for (byte b : bytes) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            sign = hexString.toString().toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return sign;
    }

//    public static void main(String[] args) {
//        // 示例参数，根据实际情况替换
//        String clientSecret = "your_client_secret";
//        Map<String, String> params = new TreeMap<>();
//        params.put("client_id", "your_client_id");
//        params.put("param1", "value1");
//        params.put("param2", "value2");
//
//        String sign = generateSign(params, clientSecret);
//        System.out.println("Sign: " + sign);
//    }
}
