package cn.qihangerp.open.xhs.response;

import lombok.Data;

import java.util.List;

@Data
public class OrderResponse {

    /**
     * 订单号（第三方平台orderId）
     */
    private String orderId;


    /**
     * 订单类型：（小红书：订单类型，1普通 2定金预售 3全款预售 4延迟发货 5换货补发）
     */
    private Integer orderType;

    /**
     * 小红书订单状态，1已下单待付款 2已支付处理中 3清关中 4待发货 5部分发货 6待收货 7已完成 8已关闭 9已取消 10换货申请中
     */
    private Integer orderStatus;

    /**
     * 小红书售后状态，售后状态，1无售后 2售后处理中 3售后完成 4售后拒绝 5售后关闭 6平台介入中 7售后取消
     */
    private Integer orderAfterSalesStatus;

    /**
     * 申请取消状态，0未申请取消 1取消处理中
     */
    private Integer cancelStatus;

    /**
     * ERP发货状态0待处理1出库中2已出库3已发货
     */
    private Integer erpSendStatus;

    /**
     * 订单创建时间 单位ms
     */
    private Long createdTime;

    /**
     * 订单支付时间 单位ms
     */
    private Long paidTime;

    /**
     * 订单更新时间 单位ms
     */
    private Long updateTime;

    /**
     * 订单发货时间 单位ms
     */
    private Long deliveryTime;

    /**
     * 订单取消时间 单位ms
     */
    private Long cancelTime;

    /**
     * 订单完成时间 单位ms
     */
    private Long finishTime;

    /**
     * 承诺最晚发货时间 单位ms
     */
    private Long promiseLastDeliveryTime;

    /**
     * 用户备注
     */
    private String customerRemark;

    /**
     * 商家标记备注
     */
    private String sellerRemark;

    /**
     * 商家标记优先级，ark订单列表展示旗子颜色 1灰旗 2红旗 3黄旗 4绿旗 5蓝旗 6紫旗
     */
    private Integer sellerRemarkFlag;

    /**
     * 预售最早发货时间 单位ms
     */
    private Long presaleDeliveryStartTime;

    /**
     * 预售最晚发货时间 单位ms
     */
    private Long presaleDeliveryEndTime;

    /**
     * 原始关联订单号(退换订单的原订单)
     */
    private String originalPackageId;

    /**
     * 订单商品总净重 单位g
     */
    private Integer totalNetWeightAmount;

    /**
     * 订单实付金额(包含运费) 单位分
     */
    private Integer totalPayAmount;

    /**
     * 订单运费 单位分
     */
    private Integer totalShippingFree;

    /**
     * 快递单号
     */
    private String expressTrackingNo;

    /**
     * 快递公司编码
     */
    private String expressCompanyCode;

    /**
     * 收件人姓名+手机+地址等计算得出，用来查询收件人详情
     */
    private String openAddressId;

    /**
     *
     */
    private String receiverProvinceName;

    /**
     *
     */
    private String receiverCityName;

    /**
     *
     */
    private String receiverDistrictName;

    /**
     * 收件人
     */
    private String receiver;

    /**
     * 电话
     */
    private String phone;

    /**
     * 国家
     */
    private String country;

    /**
     * 详细地址
     */
    private String address;

    /**
     * 商家承担总优惠金额 单位分
     */
    private Integer totalMerchantDiscount;

    /**
     * 平台承担总优惠金额 单位分
     */
    private Integer totalRedDiscount;

    /**
     * 商家实收(=用户支付金额+定金+平台优惠) 单位分
     */
    private Integer merchantActualReceiveAmount;

    /**
     * 改价总金额 单位分
     */
    private Integer totalChangePriceAmount;

    /**
     * 支付方式 1：支付宝 2：微信 3：apple 内购 4：apple pay 5：花呗分期 7：支付宝免密支付 8：云闪付 -1：其他
     */
    private Integer paymentType;

    /**
     * 用户id
     */
    private String userId;

    /**
     * 订单标签列表 NEW_YEAR 新年礼 PLATFORM_DECLARE 平台报备 SELLER_DECLARE 商家报备 CONSULT 协商发货 MODIFIED_ADDR 已改地址 MODIFIED_PRICE 已改价 NO_LOGISTICS_SHIP 无物流发货 PRINTED 部分打单/已打单 URGENT_SHIP 催发货 QIC QIC质检 SAMPLE 拿样 HOME_DELIVERY 送货上门 LACK_GOOD 缺货 EXPLODE 发生现货爆单的订单 EXEMPT 发生现货爆单享受豁免 CERTIFICATION_WAREHOUSE 认证仓 COUNTRY_SUBSIDY: 国家补贴 CITY_SUBSIDY:城市补贴 COUNTRY_SUBSIDY_SUPPLY_SALE:国补供销 BUY_AGENT:代购 RDS:跨境出海订单
     */
    private String orderTag;

    private List<OrderItem> itemList;
}
