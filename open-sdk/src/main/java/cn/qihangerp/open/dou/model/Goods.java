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
    private int sellNum;
    /**
     * discountPrice
     */
    @JsonProperty("discount_price")
    private int discountPrice;
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
    private int createTime;
    /**
     * isPackageProduct
     */
    @JsonProperty("is_package_product")
    private boolean isPackageProduct;
    /**
     * marketPrice
     */
    @JsonProperty("market_price")
    private int marketPrice;
    /**
     * payPype
     */
    @JsonProperty("pay_type")
    private int payPype;
    /**
     * outProductId
     */
    @JsonProperty("out_product_id")
    private int outProductId;
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
    private int status;
    /**
     * productType
     */
    @JsonProperty("product_type")
    private int productType;
    /**
     * specId
     */
    @JsonProperty("spec_id")
    private long specId;
    /**
     * updateTime
     */
    @JsonProperty("update_time")
    private int updateTime;
    /**
     * description
     */
    private String description;
    /**
     * productId
     */
    @JsonProperty("product_id")
    private long productId;
    /**
     * checkStatus
     */
    @JsonProperty("check_status")
    private int checkStatus;
    /**
     * cosRatio
     */
    @JsonProperty("cos_ratio")
    private int cosRatio;
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
        private int first_cid;
        /**
         * second_cid
         */
        private int second_cid;
        /**
         * third_cid
         */
        private int third_cid;
        /**
         * fourth_cid
         */
        private int fourth_cid;
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
