package cn.qihangerp.open.dou.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class Goods {


    /**
     * sellNum
     */
    @JsonProperty("sell_num")
    private Integer sellNum;
    /**
     * discountPrice
     */
    @JsonProperty("discount_price")
    private Integer discountPrice;
    /**
     * img
     */
    private String img;
    /**
     * name
     */
    private String name;
    /**
     * createTime
     */
    @JsonProperty("create_time")
    private Integer createTime;
    /**
     * isPackageProduct
     */
    @JsonProperty("is_package_product")
    private boolean isPackageProduct;
    /**
     * marketPrice
     */
    @JsonProperty("market_price")
    private Integer marketPrice;
    /**
     * payPype
     */
    @JsonProperty("pay_type")
    private Integer payPype;
    /**
     * outProductId
     */
    @JsonProperty("out_product_id")
    private Long outProductId;
    /**
     * extra
     */
    private String extra;
    /**
     * categoryDetail
     */
    @JsonProperty("category_detail")
    private CategoryDetailBean categoryDetail;
    /**
     * status
     */
    private Integer status;
    /**
     * productType
     */
    @JsonProperty("product_type")
    private Integer productType;
    /**
     * specId
     */
    @JsonProperty("spec_id")
    private Long specId;
    /**
     * updateTime
     */
    @JsonProperty("update_time")
    private Integer updateTime;
    /**
     * description
     */
    private String description;
    /**
     * productId
     */
    @JsonProperty("product_id")
    private Long productId;
    /**
     * checkStatus
     */
    @JsonProperty("check_status")
    private Integer checkStatus;
    /**
     * cosRatio
     */
    @JsonProperty("cos_ratio")
    private Integer cosRatio;
    /**
     * outerProductId
     */
    @JsonProperty("outer_product_id")
    private String outerProductId;

    private List<GoodsSku> skuList;

    /**
     * CategoryDetailBean
     */
    @NoArgsConstructor
    @Data
    public static class CategoryDetailBean {
        /**
         * fourth_cname
         */
        private String fourth_cname;
        /**
         * first_cid
         */
        private Integer first_cid;
        /**
         * second_cid
         */
        private Integer second_cid;
        /**
         * third_cid
         */
        private Integer third_cid;
        /**
         * fourth_cid
         */
        private Integer fourth_cid;
        /**
         * first_cname
         */
        private String first_cname;
        /**
         * second_cname
         */
        private String second_cname;
        /**
         * third_cname
         */
        private String third_cname;
    }
}
