package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * SkuOrderTagUiBean
 */
@NoArgsConstructor
@Data
public class SkuOrderTagUiBean {
    /**
     * extra
     */
    @JsonProperty("extra")
    private String extra;
    /**
     * key
     */
    @JsonProperty("key")
    private String key;
    /**
     * text
     */
    @JsonProperty("text")
    private String text;
    /**
     * hoverText
     */
    @JsonProperty("hover_text")
    private String hoverText;
    /**
     * tagType
     */
    @JsonProperty("tag_type")
    private String tagType;
    /**
     * helpDoc
     */
    @JsonProperty("help_doc")
    private String helpDoc;
    /**
     * sort
     */
    @JsonProperty("sort")
    private int sort;
}
