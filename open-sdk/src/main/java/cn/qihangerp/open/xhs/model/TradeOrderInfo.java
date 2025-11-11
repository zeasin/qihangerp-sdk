package cn.qihangerp.open.xhs.model;

import lombok.Data;

import java.util.List;
import java.util.UUID;

@Data
public class TradeOrderInfo {
    private String objectId = UUID.randomUUID().toString();
    private String templateId;//必填 电子面单模板ID，通过调用[查询电子面单模板列表express.queryEbillTemplates]接口查询得到，注意新版和旧版的ID不能混用
    private OrderInfo orderInfo;
    private PackageInfo packageInfo;
    private Recipient recipient;//收件人信息，支持明文、密文、openAddressId + xhsOrderId三种

    @Data
    public static class OrderInfo{
        private String orderChannelsType;//订单渠道，见[对接说明](https://open.xiaohongshu.com/document/developer/file/52)附录渠道列表
        private List<String> tradeOrderList;//订单列表，如果是小红书订单并且没有传xhsOrderId参数则需要填写正确的订单号，否则可能导致用户信息解密出现问题\
        private String buyerMemo;
        private String sellerMemo;
        private String xhsOrderId;//小红书订单号，如果传了值，密文解密的时候会基于这个参数来做解密
        private List<String>  xhsOrderList;//合单订单号列表，合单情况下必填
    }

    @Data
    public static class PackageInfo{
        private String id;//包裹ID
        private String volume;//体积, 单位 ml
        private String weight;//重量,单位 g
        private String length;//包裹长，单位厘米
        private String width;//包裹宽，单位厘米
        private String height;//包裹高，单位厘米
        private String totalPackagesCount;//子母件包裹数，该字段大于0则表示子母件
        private String packagingDescription;//大件快运中的包装方式描述
        private String goodsDescription;//大件快运中的货品描述，顺丰要求必传长度不能超过20，并且不能和商品名称相同
        private String goodValue;//物流价值，单位元
        private List<Item> items;
        @Data
        public static class Item{
            private String name;//名称
            private String specification;//规格
            private Integer count;//数量
        }
    }

    @Data
    public static class Recipient{
        private String phone;
        private String mobile;
        private String name;
        private String openAddressId;
        private Address address;
        @Data
        public static class Address{
            private String province;
            private String city;
            private String district;
            private String town;
            private String detail;
        }
    }
}
