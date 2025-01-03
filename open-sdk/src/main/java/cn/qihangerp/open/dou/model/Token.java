package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class Token {

    /**
     * access_token : a0f642c9-58b5-4fbb-b319-649887c41b5e
     * encrypt_operator :
     * expires_in : 449056
     * operator_name :
     * refresh_token : 4d9f5c0f-c35f-495e-aeaf-577118e8c22b
     * scope : SCOPE
     * shop_biz_type : 0
     * shop_id : 90158786
     * shop_name : 曲美家居官方旗舰店
     */
    @JsonProperty("access_token")
    private String accessToken;
    private String encrypt_operator;
    @JsonProperty("expires_in")
    private int expiresIn;
    private String operator_name;
    @JsonProperty("refresh_token")
    private String refreshToken;
    private String scope;
    private int shop_biz_type;
    @JsonProperty("shop_id")
    private int shopId;
    @JsonProperty("shop_name")
    private String shopName;

}
