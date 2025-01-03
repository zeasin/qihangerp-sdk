package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * SellerLogsBean
 */
@NoArgsConstructor
@Data
public class SellerLogsBean {
    /**
     * star
     */
    @JsonProperty("star")
    private int star;
    /**
     * content
     */
    @JsonProperty("content")
    private String content;
    /**
     * opName
     */
    @JsonProperty("op_name")
    private String opName;
    /**
     * createTime
     */
    @JsonProperty("create_time")
    private String createTime;
}
