package cn.qihangerp.open.kwai.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class KwaiGoodsItem {

    @JsonProperty("instructions")
    private String instructions;
    @JsonProperty("itemType")
    private Integer itemType;
    @JsonProperty("shelfStatus")
    private Integer shelfStatus;
    @JsonProperty("skuList")
    private List<SkuListDTO> skuList;
    @JsonProperty("duplicationStatus")
    private Integer duplicationStatus;
    @JsonProperty("title")
    private String title;
    @JsonProperty("categoryName")
    private String categoryName;
    @JsonProperty("duplicationReason")
    private String duplicationReason;
    @JsonProperty("relItemId")
    private Long relItemId;
    @JsonProperty("fromType")
    private Integer fromType;
    @JsonProperty("price")
    private Integer price;
    @JsonProperty("itemStatus")
    private Integer itemStatus;
    @JsonProperty("linkUrl")
    private String linkUrl;
    @JsonProperty("details")
    private String details;
    @JsonProperty("mainImageUrl")
    private String mainImageUrl;
    @JsonProperty("serviceRule")
    private ServiceRuleDTO serviceRule;
    @JsonProperty("kwaiItemId")
    private Long kwaiItemId;
    @JsonProperty("expressTemplateId")
    private Long expressTemplateId;
    @JsonProperty("updateTime")
    private Long updateTime;
    @JsonProperty("userId")
    private Integer userId;
    @JsonProperty("volume")
    private Integer volume;
    @JsonProperty("multipleStock")
    private Boolean multipleStock;
    @JsonProperty("auditReason")
    private String auditReason;
    @JsonProperty("shelfStatusUpdateReason")
    private String shelfStatusUpdateReason;
    @JsonProperty("createTime")
    private Long createTime;
    @JsonProperty("imageUrls")
    private List<String> imageUrls;
    @JsonProperty("auditStatus")
    private Integer auditStatus;
    @JsonProperty("appkey")
    private String appkey;
    @JsonProperty("categoryId")
    private Integer categoryId;
    @JsonProperty("status")
    private Integer status;

    @NoArgsConstructor
    @Data
    public static class ServiceRuleDTO {
        @JsonProperty("refundRule")
        private String refundRule;
        @JsonProperty("servicePromise")
        private ServicePromiseDTO servicePromise;
        @JsonProperty("customerInfo")
        private CustomerInfoDTO customerInfo;
        @JsonProperty("promiseDeliveryTime")
        private Integer promiseDeliveryTime;
        @JsonProperty("theDayOfDeliverGoodsTime")
        private Integer theDayOfDeliverGoodsTime;

        @NoArgsConstructor
        @Data
        public static class ServicePromiseDTO {
            @JsonProperty("freshRotRefund")
            private Boolean freshRotRefund;
            @JsonProperty("brokenRefund")
            private Boolean brokenRefund;
            @JsonProperty("allergyRefund")
            private Boolean allergyRefund;
            @JsonProperty("crabRefund")
            private Boolean crabRefund;
        }

        @NoArgsConstructor
        @Data
        public static class CustomerInfoDTO {
            @JsonProperty("customerInfoType")
            private String customerInfoType;
            @JsonProperty("customerCertificateType")
            private List<?> customerCertificateType;
        }
    }

    @NoArgsConstructor
    @Data
    public static class SkuListDTO {
        @JsonProperty("kwaiItemId")
        private Long kwaiItemId;
        @JsonProperty("goodsId")
        private String goodsId;
        @JsonProperty("isValid")
        private Integer isValid;
        @JsonProperty("skuSalePrice")
        private Integer skuSalePrice;
        @JsonProperty("skuStock")
        private Integer skuStock;
        @JsonProperty("specification")
        private String specification;
        @JsonProperty("updateTime")
        private Long updateTime;
        @JsonProperty("volume")
        private Integer volume;
        @JsonProperty("mealDetail")
        private MealDetailDTO mealDetail;
        @JsonProperty("createTime")
        private Long createTime;
        @JsonProperty("relSkuId")
        private Long relSkuId;
        @JsonProperty("imageUrl")
        private String imageUrl;
        @JsonProperty("kwaiSkuId")
        private Long kwaiSkuId;
        @JsonProperty("skuNick")
        private String skuNick;
        @JsonProperty("gtinCode")
        private String gtinCode;
        @JsonProperty("skuProp")
        private List<SkuPropDTO> skuProp;
        @JsonProperty("appkey")
        private String appkey;
        @JsonProperty("goodsCode")
        private List<?> goodsCode;

        @NoArgsConstructor
        @Data
        public static class MealDetailDTO {
            @JsonProperty("mealGroup")
            private List<?> mealGroup;
            @JsonProperty("lowestPeopleNum")
            private Integer lowestPeopleNum;
            @JsonProperty("highestPeopleNum")
            private Integer highestPeopleNum;
            @JsonProperty("mealGroupDTOList")
            private List<?> mealGroupDTOList;
        }

        @NoArgsConstructor
        @Data
        public static class SkuPropDTO {
            @JsonProperty("propValueGroupId")
            private Integer propValueGroupId;
            @JsonProperty("isValid")
            private Integer isValid;
            @JsonProperty("propId")
            private Integer propId;
            @JsonProperty("propValueSortNum")
            private Integer propValueSortNum;
            @JsonProperty("skuPropId")
            private Integer skuPropId;
            @JsonProperty("updateTime")
            private Long updateTime;
            @JsonProperty("propName")
            private String propName;
            @JsonProperty("itemId")
            private Long itemId;
            @JsonProperty("propValueId")
            private Integer propValueId;
            @JsonProperty("isMainProp")
            private Integer isMainProp;
            @JsonProperty("createTime")
            private Long createTime;
            @JsonProperty("propVersion")
            private Integer propVersion;
            @JsonProperty("imageUrl")
            private String imageUrl;
            @JsonProperty("propSortNum")
            private Integer propSortNum;
            @JsonProperty("propValueName")
            private String propValueName;
            @JsonProperty("propValueRemarks")
            private String propValueRemarks;
            @JsonProperty("skuId")
            private Long skuId;
        }
    }
}
