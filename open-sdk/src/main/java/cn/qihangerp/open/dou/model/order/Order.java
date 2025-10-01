package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

@NoArgsConstructor
@Data
public class Order {


    /**
     * greetWords
     */
    @JsonProperty("greet_words")
    private String greetWords;
    /**
     * createTime
     */
    @JsonProperty("create_time")
    private Long createTime;
    /**
     * promotionAmount
     */
    @JsonProperty("promotion_amount")
    private Long promotionAmount;
    /**
     * earliestReceiptTime
     */
    @JsonProperty("earliest_receipt_time")
    private int earliestReceiptTime;
    /**
     * sellerRemarkStars
     */
    @JsonProperty("seller_remark_stars")
    private Integer sellerRemarkStars;
    /**
     * orderPhaseList
     */
    @JsonProperty("order_phase_list")
    private List<?> orderPhaseList;
    /**
     * serialNumberList
     */
    @JsonProperty("serial_number_list")
    private List<?> serialNumberList;
    /**
     * maskPostAddr
     */
    @JsonProperty("mask_post_addr")
    private MaskPostAddrBean maskPostAddr;
    /**
     * packingAmount
     */
    @JsonProperty("packing_amount")
    private int packingAmount;
    /**
     * orderTag
     */
    @JsonProperty("order_tag")
    private Map<String,String> orderTag;
    /**
     * subBType
     */
    @JsonProperty("sub_b_type")
    private Integer subBType;
    /**
     * promotionPlatformAmount
     */
    @JsonProperty("promotion_platform_amount")
    private Long promotionPlatformAmount;
    /**
     * openAddressId
     */
    @JsonProperty("open_address_id")
    private String openAddressId;
    /**
     * dCarShopBizData
     */
//    @JsonProperty("d_car_shop_biz_data")
//    private DCarShopBizDataBean dCarShopBizData;
    /**
     * earlyArrival
     */
    @JsonProperty("early_arrival")
    private boolean earlyArrival;
    /**
     * supermarketOrderSerialNo
     */
    @JsonProperty("supermarket_order_serial_no")
    private String supermarketOrderSerialNo;
    /**
     * fulfillStatus
     */
    @JsonProperty("fulfill_status")
    private String fulfillStatus;
    /**
     * recommendEndShipTime
     */
    @JsonProperty("recommend_end_ship_time")
    private int recommendEndShipTime;
    /**
     * orderStatus
     */
    @JsonProperty("order_status")
    private Integer orderStatus;
    /**
     * promotionTalentAmount
     */
    @JsonProperty("promotion_talent_amount")
    private Long promotionTalentAmount;
    /**
     * awemeId
     */
    @JsonProperty("aweme_id")
    private String awemeId;
    /**
     * modifyPostAmount
     */
    @JsonProperty("modify_post_amount")
    private Long modifyPostAmount;
    /**
     * platformCostAmount
     */
    @JsonProperty("platform_cost_amount")
    private Long platformCostAmount;
    /**
     * doudianOpenId
     */
    @JsonProperty("doudian_open_id")
    private String doudianOpenId;
    /**
     * promotionRedpackPlatformAmount
     */
    @JsonProperty("promotion_redpack_platform_amount")
    private Long promotionRedpackPlatformAmount;
    /**
     * promotionRedpackTalentAmount
     */
    @JsonProperty("promotion_redpack_talent_amount")
    private Long promotionRedpackTalentAmount;
    /**
     * latestReceiptTime
     */
    @JsonProperty("latest_receipt_time")
    private int latestReceiptTime;
    /**
     * encryptPayTel
     */
    @JsonProperty("encrypt_pay_tel")
    private String encryptPayTel;
    /**
     * orderTypeDesc
     */
    @JsonProperty("order_type_desc")
    private String orderTypeDesc;
    /**
     * postAmount
     */
    @JsonProperty("post_amount")
    private Long postAmount;
    /**
     * postInsuranceAmount
     */
    @JsonProperty("post_insurance_amount")
    private Long postInsuranceAmount;
    /**
     * logisticsInfo
     */
    @JsonProperty("logistics_info")
    private List<LogisticsInfoBean> logisticsInfo;
    /**
     * postOriginAmount
     */
    @JsonProperty("post_origin_amount")
    private Long postOriginAmount;
    /**
     * orderType
     */
    @JsonProperty("order_type")
    private Integer orderType;
    /**
     * tradeTypeDesc
     */
    @JsonProperty("trade_type_desc")
    private String tradeTypeDesc;
    /**
     * orderAmount
     */
    @JsonProperty("order_amount")
    private Long orderAmount;
    /**
     * payTime
     */
    @JsonProperty("pay_time")
    private Long payTime;
    /**
     * postReceiver
     */
    @JsonProperty("post_receiver")
    private String postReceiver;
    /**
     * promotionRedpackAmount
     */
    @JsonProperty("promotion_redpack_amount")
    private Long promotionRedpackAmount;
    /**
     * userCoordinate
     */
    @JsonProperty("user_coordinate")
    private UserCoordinateBean userCoordinate;
    /**
     * targetArrivalTime
     */
    @JsonProperty("target_arrival_time")
    private int targetArrivalTime;
    /**
     * recommendStartShipTime
     */
    @JsonProperty("recommend_start_ship_time")
    private int recommendStartShipTime;
    /**
     * orderStatusDesc
     */
    @JsonProperty("order_status_desc")
    private String orderStatusDesc;
    /**
     * updateTime
     */
    @JsonProperty("update_time")
    private Long updateTime;
    /**
     * payType
     */
    @JsonProperty("pay_type")
    private Integer payType;
    /**
     * payAmount
     */
    @JsonProperty("pay_amount")
    private Long payAmount;
    /**
     * postAddr
     */
    @JsonProperty("post_addr")
    private PostAddrBean postAddr;
    /**
     * onlyPlatformCostAmount
     */
    @JsonProperty("only_platform_cost_amount")
    private Long onlyPlatformCostAmount;
    /**
     * mainStatus
     */
    @JsonProperty("main_status")
    private Integer mainStatus;
    /**
     * mainStatusDesc
     */
    @JsonProperty("main_status_desc")
    private String mainStatusDesc;
    /**
     * cancelReason
     */
    @JsonProperty("cancel_reason")
    private String cancelReason;
    /**
     * totalPromotionAmount
     */
    @JsonProperty("total_promotion_amount")
    private Long totalPromotionAmount;
    /**
     * userTagUi
     */
    @JsonProperty("user_tag_ui")
    private List<UserTagUiBean> userTagUi;
    /**
     * taxAmount
     */
    @JsonProperty("tax_amount")
    private int taxAmount;
    /**
     * encryptPostReceiver
     */
    @JsonProperty("encrypt_post_receiver")
    private String encryptPostReceiver;
    /**
     * originalShopId
     */
    @JsonProperty("original_shop_id")
    private int originalShopId;
    /**
     * skuOrderList
     */
    @JsonProperty("sku_order_list")
    private List<OrderItem> skuOrderList;
    /**
     * shopOrderTagUi
     */
    @JsonProperty("shop_order_tag_ui")
    private List<?> shopOrderTagUi;
    /**
     * maskPayTel
     */
    @JsonProperty("mask_pay_tel")
    private String maskPayTel;
    /**
     * shopId
     */
    @JsonProperty("shop_id")
    private Long shopId;
    /**
     * finishTime
     */
    @JsonProperty("finish_time")
    private Long finishTime;
    /**
     * addressTagUi
     */
    @JsonProperty("address_tag_ui")
    private List<?> addressTagUi;
    /**
     * promotionShopAmount
     */
    @JsonProperty("promotion_shop_amount")
    private Long promotionShopAmount;
    /**
     * promotionPayAmount
     */
    @JsonProperty("promotion_pay_amount")
    private Long promotionPayAmount;
    /**
     * authorCostAmount
     */
    @JsonProperty("author_cost_amount")
    private Integer authorCostAmount;
    /**
     * userNickName
     */
    @JsonProperty("user_nick_name")
    private String userNickName;
    /**
     * receiptDate
     */
    @JsonProperty("receipt_date")
    private String receiptDate;
    /**
     * appId
     */
    @JsonProperty("app_id")
    private Integer appId;
    /**
     * shopCostAmount
     */
    @JsonProperty("shop_cost_amount")
    private Long shopCostAmount;
    /**
     * expShipTime
     */
    @JsonProperty("exp_ship_time")
    private Long expShipTime;
    /**
     * shipTime
     */
    @JsonProperty("ship_time")
    private Long shipTime;
    /**
     * maskPostTel
     */
    @JsonProperty("mask_post_tel")
    private String maskPostTel;
    /**
     * userIcon
     */
    @JsonProperty("user_icon")
    private String userIcon;
    /**
     * acceptOrderStatus
     */
    @JsonProperty("accept_order_status")
    private Integer acceptOrderStatus;
    /**
     * biz
     */
    @JsonProperty("biz")
    private Integer biz;
    /**
     * orderId
     */
    @JsonProperty("order_id")
    private String orderId;
    /**
     * bType
     */
    @JsonProperty("b_type")
    private Integer bType;
    /**
     * encryptPostTel
     */
    @JsonProperty("encrypt_post_tel")
    private String encryptPostTel;
    /**
     * sellerWords
     */
    @JsonProperty("seller_words")
    private String sellerWords;
    /**
     * subBTypeDesc
     */
    @JsonProperty("sub_b_type_desc")
    private String subBTypeDesc;
    /**
     * modifyAmount
     */
    @JsonProperty("modify_amount")
    private Long modifyAmount;
    /**
     * postPromotionAmount
     */
    @JsonProperty("post_promotion_amount")
    private Long postPromotionAmount;
    /**
     * promiseInfo
     */
    @JsonProperty("promise_info")
    private String promiseInfo;
    /**
     * receiptTimeMap
     */
    @JsonProperty("receipt_time_map")
    private Map<String,String> receiptTimeMap;
    /**
     * tradeType
     */
    @JsonProperty("trade_type")
    private int tradeType;
    /**
     * buyerWords
     */
    @JsonProperty("buyer_words")
    private String buyerWords;
    /**
     * maskPostReceiver
     */
    @JsonProperty("mask_post_receiver")
    private String maskPostReceiver;
    /**
     * bizDesc
     */
    @JsonProperty("biz_desc")
    private String bizDesc;
    /**
     * orderExpireTime
     */
    @JsonProperty("order_expire_time")
    private Long orderExpireTime;
    /**
     * bTypeDesc
     */
    @JsonProperty("b_type_desc")
    private String bTypeDesc;
    /**
     * channelPaymentNo
     */
    @JsonProperty("channel_payment_no")
    private String channelPaymentNo;
    /**
     * postTel
     */
    @JsonProperty("post_tel")
    private String postTel;
    /**
     * shopName
     */
    @JsonProperty("shop_name")
    private String shopName;
    /**
     * openId
     */
    @JsonProperty("open_id")
    private String openId;
    /**
     * orderLevel
     */
    @JsonProperty("order_level")
    private Integer orderLevel;
    /**
     * appointmentShipTime
     */
    @JsonProperty("appointment_ship_time")
    private Long appointmentShipTime;
    /**
     * payTel
     */
    @JsonProperty("pay_tel")
    private String payTel;
}
