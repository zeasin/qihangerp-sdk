package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class Order {


    /**
     * 全国联保，1:是，0:否
     */
    @JsonProperty("support_nationwide_warranty")
    private int supportNationwideWarranty;
    /**
     * 收件地国家或地区
     */
    private String country;
    /**
     * 成团状态：0：拼团中、1：已成团、2：团失败
     */
    @JsonProperty("group_status")
    private int groupStatus;
    /**
     * 是否顺丰包邮 1表示是 0表示否
     */
    @JsonProperty("free_sf")
    private int freeSf;
    /**
     * 折扣金额（元）折扣金额=平台优惠+商家优惠+团长免单优惠金额
     */
    @JsonProperty("discount_amount")
    private Double discountAmount;
    /**
     * 平台优惠金额
     */
    @JsonProperty("platform_discount")
    private Double platformDiscount;
    /**
     * 退货包运费，1:是，0:否
     */
    @JsonProperty("return_freight_payer")
    private int returnFreightPayer;
    /**
     * 发货状态，枚举值：1：待发货，2：已发货待签收，3：已签收
     */
    @JsonProperty("order_status")
    private int orderStatus;

    /**
     * 订单审核状态（0-正常订单， 1-审核中订单）
     */
    @JsonProperty("risk_control_status")
    private int riskControlStatus;
    /**
     * 收件地省份
     */
    private String province;
    /**
     * 区县编码
     */
    @JsonProperty("town_id")
    private int townId;

    /**
     * 支付单号
     */
    @JsonProperty("pay_no")
    private String payNo;
    /**
     * 订单承诺发货时间
     */
    @JsonProperty("last_ship_time")
    private String lastShipTime;
    /**
     * 是否当日发货，1-是，0-否
     */
    @JsonProperty("delivery_one_day")
    private int deliveryOneDay;
    /**
     * 创建时间
     */
    @JsonProperty("created_time")
    private String createdTime;

    /**
     * 退款状态，枚举值：1：无售后或售后关闭，2：售后处理中，3：退款中，4： 退款成功
     */
    @JsonProperty("refund_status")
    private int refundStatus;
    /**
     * 收件地区县
     */
    private String town;
    /**
     * 是否缺货 0-无缺货处理 1： 有缺货处理
     */
    @JsonProperty("is_stock_out")
    private int isStockOut;
    /**
     * open_address_id
     */
    private String open_address_id;
    /**
     * 收件人地址（打码）
     */
    @JsonProperty("receiver_address_mask")
    private String receiverAddressMask;
    /**
     * 确认收货时间
     */
    @JsonProperty("receive_time")
    private String receiveTime;
    /**
     * 支付时间
     */
    @JsonProperty("pay_time")
    private String payTime;

    /**
     * 团长免单优惠金额，只在团长免单活动中才会返回优惠金额
     */
    @JsonProperty("capital_free_discount")
    private Double capitalFreeDiscount;
    /**
     * 收件人手机号（打码）
     */
    @JsonProperty("receiver_phone_mask")
    private String receiverPhoneMask;
    /**
     * 国家或地区编码
     */
    @JsonProperty("country_id")
    private int countryId;
    /**
     * 城市编码
     */
    @JsonProperty("city_id")
    private int cityId;
    /**
     * 发票申请,1代表有 0代表无
     */
    @JsonProperty("invoice_status")
    private int invoiceStatus;

    /**
     * city
     */
    private String city;
    /**
     * order_tag_list
     */
    private List<OrderTagListBean> order_tag_list;
    /**
     * 是否抽奖订单，1-非抽奖订单，2-抽奖订单
     */
    @JsonProperty("is_lucky_flag")
    private int isLuckyFlag;
    /**
     * yyps_time
     */
    private String yyps_time;
    /**
     * 市场业务类型，0-普通订单，1-拼内购订单
     */
    @JsonProperty("mkt_biz_type")
    private int mktBizType;
    /**
     * 创建交易时的物流方式(1-预约配送，2-1小时达，3-消费者预约送达)
     */
    private int shipping_type;
    /**
     * remark
     */
    private String remark;
    /**
     * 预售时间
     */
    private String pre_sale_time;

    /**
     * 订单改价折扣金额，单位元
     */
    @JsonProperty("order_change_amount")
    private Double orderChangeAmount;
    /**
     * 只换不修，1:是，0:否
     */
    @JsonProperty("only_support_replace")
    private int onlySupportReplace;
    /**
     * 快递ID
     */
    @JsonProperty("logistics_id")
    private int logisticsId;
    /**
     * 订单最近一次更新时间
     */
    @JsonProperty("updated_at")
    private String updatedAt;
    /**
     * street
     */
    private String street;
    /**
     * 收件人姓名（打码）
     */
    @JsonProperty("receiver_name_mask")
    private String receiverNameMask;
    /**
     * 收件人姓名 订单状态为待发货状态，
     */
    @JsonProperty("receiver_name")
    private String receiverName;
    /**
     * 运单号
     */
    @JsonProperty("tracking_number")
    private String trackingNumber;
    /**
     * 支付方式，枚举值：QQ,WEIXIN,ALIPAY,LIANLIANPAY
     */
    @JsonProperty("pay_type")
    private String payType;
    /**
     * 是否多多批发，1-是，0-否
     */
    @JsonProperty("duoduo_wholesale")
    private int duoduoWholesale;
    /**
     * 买家留言信息
     */
    @JsonProperty("buyer_memo")
    private String buyerMemo;
    /**
     * 是否为预售商品 1表示是 0表示否
     */
    @JsonProperty("is_pre_sale")
    private int isPreSale;
    /**
     * 发货时间
     */
    @JsonProperty("shipping_time")
    private String shippingTime;
    /**
     * 送货入户并安装服务 0-不支持送货，1-送货入户不安装，2-送货入户并安装
     */
    @JsonProperty("home_delivery_type")
    private int homeDeliveryType;
    /**
     * 售后状态 0：无售后 2：买家申请退款，待商家处理 3：退货退款，待商家处理 4：商家同意退款，退款中 5：平台同意退款，退款中 6：驳回退款，待买家处理 7：已同意退货退款,待用户发货 8：平台处理中 9：平台拒绝退款，退款关闭 10：退款成功 11：买家撤销 12：买家逾期未处理，退款失败 13：买家逾期，超过有效期 14：换货补寄待商家处理 15：换货补寄待用户处理 16：换货补寄成功 17：换货补寄失败 18：换货补寄待用户确认完成 21：待商家同意维修 22：待用户确认发货 24：维修关闭 25：维修成功 27：待用户确认收货 31：已同意拒收退款，待用户拒收 32：补寄待商家发货 33：同意召回后退款，待商家召回
     */
    @JsonProperty("after_sales_status")
    private int afterSalesStatus;
    /**
     * address
     */
    private String address;

    /**
     * self_contained
     */
    private int self_contained;
    /**
     * 商品金额（元）商品金额=商品销售价格*商品数量-订单改价折扣金额
     */
    @JsonProperty("goods_amount")
    private Double goodsAmount;
    /**
     * 支付金额（元）支付金额=商品金额-折扣金额+邮费+服务费
     */
    @JsonProperty("pay_amount")
    private Double payAmount;
    /**
     * 店铺优惠金额
     */
    @JsonProperty("seller_discount")
    private Double sellerDiscount;
    /**
     * 详细地址（打码）
     */
    @JsonProperty("address_mask")
    private String addressMask;
    /**
     * yyps_date
     */
    private String yyps_date;
    /**
     * 成交状态：0：未成交、1：已成交、2：已取消
     */
    @JsonProperty("confirm_status")
    private int confirmStatus;
    /**
     * 成交时间
     */
    @JsonProperty("confirm_time")
    private String confirmTime;
    /**
     * stock_out_handle_status
     */
    private int stock_out_handle_status;
    /**
     * 邮费
     */
    private Double postage;
    /**
     * 省份编码
     */
    @JsonProperty("province_id")
    private int provinceId;
    /**
     * cat_id_3
     */
    @JsonProperty("cat_id_3")
    private int catId3;
    /**
     * cat_id_4
     */
    @JsonProperty("cat_id_4")
    private int catId4;
    /**
     * cat_id_1
     */
    @JsonProperty("cat_id_1")
    private int catId1;
    /**
     * 收件人地址，不拼接省市区。订单状态为待发货状态，
     */
    @JsonProperty("receiver_address")
    private String receiverAddress;
    /**
     * cat_id_2
     */
    @JsonProperty("cat_id_2")
    private int catId2;
    /**
     * 订单类型 0-普通订单、1-定金订单
     */
    @JsonProperty("trade_type")
    private int tradeType;
    /**
     * 催发货时间
     */
    @JsonProperty("urge_shipping_time")
    private String urgeShippingTime;
    /**
     * 收件人电话。订单状态为待发货状态
     */
    @JsonProperty("receiver_phone")
    private String receiverPhone;
    /**
     * 	订单号
     */
    @JsonProperty("order_sn")
    private String orderSn;

    /**
     * item_list
     */
    @JsonProperty("item_list")
    private List<OrderItem> itemList;


    /**
     * OrderTagListBean
     */
    @NoArgsConstructor
    @Data
    public static class OrderTagListBean {
        /**
         * name
         */
        private String name;
        /**
         * value
         */
        private int value;
    }
}
