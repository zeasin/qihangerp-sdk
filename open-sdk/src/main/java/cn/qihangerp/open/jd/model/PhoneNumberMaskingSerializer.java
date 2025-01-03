package cn.qihangerp.open.jd.model;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;

// 自定义序列化器，将中间四位替换为星号
class PhoneNumberMaskingSerializer extends JsonSerializer<String> {
    @Override
    public void serialize(String phoneNumber, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (phoneNumber != null && phoneNumber.length() >= 7) {
            // 将中间四位替换为星号
            String maskedPhoneNumber = phoneNumber.substring(0, 3) + "****" + phoneNumber.substring(7);
            jsonGenerator.writeString(maskedPhoneNumber);
        } else {
            jsonGenerator.writeString(phoneNumber); // 如果长度不足，直接返回原值
        }
    }
}
