package cn.qihangerp.open.tao.request;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class WaybillCloudPrintApplyNewRequestTradeOrderInfoDto {


    @JsonProperty("object_id")
    private String objectId;
    @JsonProperty("order_info")
    private OrderInfoDTO orderInfo;
    @JsonProperty("package_info")
    private PackageInfoDTO packageInfo;
    @JsonProperty("recipient")
    private RecipientDTO recipient;
    @JsonProperty("template_url")
    private String templateUrl;
    @JsonProperty("user_id")
    private Integer userId;

    @NoArgsConstructor
    @Data
    public static class OrderInfoDTO {
        @JsonProperty("order_channels_type")
        private String orderChannelsType;
        @JsonProperty("out_trade_order_list")
        private String outTradeOrderList;
        @JsonProperty("out_trade_sub_order_list")
        private String outTradeSubOrderList;
        @JsonProperty("trade_order_list")
        private String tradeOrderList;
    }

    @NoArgsConstructor
    @Data
    public static class PackageInfoDTO {
        @JsonProperty("good_value")
        private String goodValue;
        @JsonProperty("goods_description")
        private String goodsDescription;
        @JsonProperty("height")
        private Integer height;
        @JsonProperty("id")
        private String id;
        @JsonProperty("items")
        private List<ItemsDTO> items;
        @JsonProperty("length")
        private Integer length;
        @JsonProperty("packaging_description")
        private String packagingDescription;
        @JsonProperty("total_packages_count")
        private Integer totalPackagesCount;
        @JsonProperty("volume")
        private Integer volume;
        @JsonProperty("weight")
        private Integer weight;
        @JsonProperty("width")
        private Integer width;

        @NoArgsConstructor
        @Data
        public static class ItemsDTO {
            @JsonProperty("count")
            private Integer count;
            @JsonProperty("name")
            private String name;
        }
    }

    @NoArgsConstructor
    @Data
    public static class RecipientDTO {
        @JsonProperty("address")
        private AddressDTO address;
        @JsonProperty("caid")
        private String caid;
        @JsonProperty("mobile")
        private String mobile;
        @JsonProperty("name")
        private String name;
        @JsonProperty("oaid")
        private String oaid;
        @JsonProperty("phone")
        private String phone;
        @JsonProperty("tid")
        private String tid;

        @NoArgsConstructor
        @Data
        public static class AddressDTO {
            @JsonProperty("city")
            private String city;
            @JsonProperty("detail")
            private String detail;
            @JsonProperty("district")
            private String district;
            @JsonProperty("province")
            private String province;
            @JsonProperty("town")
            private String town;
        }
    }
}
