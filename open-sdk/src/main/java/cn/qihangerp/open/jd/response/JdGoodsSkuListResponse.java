package cn.qihangerp.open.jd.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class JdGoodsSkuListResponse {

    @JsonProperty("wareTitle")
    private String wareTitle;
    @JsonProperty("saleAttrs")
    private List<SaleAttrsDTO> saleAttrs;
    @JsonProperty("skuName")
    private String skuName;
    @JsonProperty("logo")
    private String logo;
    @JsonProperty("modified")
    private Long modified;
    @JsonProperty("skuId")
    private Long skuId;
    @JsonProperty("wareId")
    private Long wareId;
    @JsonProperty("created")
    private Long created;
    @JsonProperty("props")
    private List<?> props;
    @JsonProperty("outerId")
    private String outerId;
    @JsonProperty("jdPrice")
    private Integer jdPrice;
    @JsonProperty("status")
    private Integer status;

    @NoArgsConstructor
    @Data
    public static class SaleAttrsDTO {
        @JsonProperty("attrValueAlias")
        private List<String> attrValueAlias;
        @JsonProperty("attrId")
        private String attrId;
        @JsonProperty("index")
        private Integer index;
        @JsonProperty("attrValues")
        private List<String> attrValues;
        @JsonProperty("attrValuesSeqNo")
        private List<Integer> attrValuesSeqNo;
    }
}
