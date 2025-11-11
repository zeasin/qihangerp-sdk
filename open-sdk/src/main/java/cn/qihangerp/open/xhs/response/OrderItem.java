
package cn.qihangerp.open.xhs.response;

import lombok.Data;

@Data
public class OrderItem {
    /**
     * 商品ID（唯一标识符）
     */
    private String skuId;

    /**
     * 商品名称
     */
    private String skuName;

    /**
     * 商家编码
     */
    private String erpcode;

    /**
     * 商品规格
     */
    private String skuSpec;

    /**
     * 商品图片URL
     */
    private String skuImage;

    /**
     * 商品数量
     */
    private Integer skuQuantity;

    /**
     * 商品sku信息列表（如组合品的子商品信息）
     */
    private Object skuDetailList;

    /**
     * 商品总实付金额（考虑总件数）
     */
    private Integer totalPaidAmount;

    /**
     * 商家承担的总优惠
     */
    private Integer totalMerchantDiscount;

    /**
     * 平台承担的总优惠
     */
    private Integer totalRedDiscount;

    /**
     * 商品税金
     */
    private Integer totalTaxAmount;

    /**
     * 商品总净重
     */
    private Integer totalNetWeight;

    /**
     * 是否赠品，1为赠品，0为普通商品
     */
    private Integer skuTag;

    /**
     * 是否为渠道商品，TRUE为渠道商品，FALSE为非渠道商品
     */
    private Integer isChannel;

    /**
     * 是否支持无物流发货，1为支持，0为不支持
     */
    private Integer deliveryMode;

    /**
     * 达人ID（通过直播间或达人主页下单时有值）
     */
    private String kolId;

    /**
     * 达人名称（通过直播间或达人主页下单时有值）
     */
    private String kolName;

    /**
     * SKU售后状态：1无售后，2售后处理中，3售后完成，4售后拒绝，5售后关闭，6平台介入中，7售后取消
     */
    private Integer skuAfterSaleStatus;

    /**
     * 商品序列号等信息，仅在某些订单中存在
     */
    private Object skuIdentifyCodeInfo;

    /**
     * 商品ID
     */
    private String itemId;

    /**
     * 商品名称
     */
    private String itemName;
}
