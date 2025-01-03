package cn.qihangerp.open.dou.model.after;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * TagsBean
 */
@NoArgsConstructor
@Data
public class TagsBean {
    /**
     * tagDetailEn
     */
    @JsonProperty("tag_detail_en")
    private String tagDetailEn;
    /**
     * tagLinkUrl
     */
    @JsonProperty("tag_link_url")
    private String tagLinkUrl;
    /**
     * tagDetail
     */
    @JsonProperty("tag_detail")
    private String tagDetail;
}
