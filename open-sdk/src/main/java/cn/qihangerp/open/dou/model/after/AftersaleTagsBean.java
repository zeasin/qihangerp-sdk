package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * AftersaleTagsBean
 */
@NoArgsConstructor
@Data
public class AftersaleTagsBean {
    /**
     * tagDetailText
     */
    @JsonProperty("tag_detail_text")
    private String tagDetailText;
    /**
     * tagLinkUrl
     */
    @JsonProperty("tag_link_url")
    private String tagLinkUrl;
    /**
     * placeholder
     */
    @JsonProperty("placeholder")
    private PlaceholderBean placeholder;
    /**
     * tagDetail
     */
    @JsonProperty("tag_detail")
    private String tagDetail;
    /**
     * tagDetailEn
     */
    @JsonProperty("tag_detail_en")
    private String tagDetailEn;
}
