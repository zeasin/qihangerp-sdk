package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

/**
 * SkuOrderListBean
 */
@NoArgsConstructor
@Data
public class OrderItem {
    /**
     * shopCostAmount
     */
    @JsonProperty("shop_cost_amount")
    private Integer shopCostAmount;
    /**
     * confirmReceiptTime
     */
    @JsonProperty("confirm_receipt_time")
    private Integer confirmReceiptTime;
    /**
     * productIdStr
     */
    @JsonProperty("product_id_str")
    private String productIdStr;
    /**
     * productPic
     */
    @JsonProperty("product_pic")
    private String productPic;
    /**
     * voucherDeductionAmount
     */
    @JsonProperty("voucher_deduction_amount")
    private int voucherDeductionAmount;
    /**
     * themeTypeDesc
     */
    @JsonProperty("theme_type_desc")
    private String themeTypeDesc;
    /**
     * orderAmount
     */
    @JsonProperty("order_amount")
    private Integer orderAmount;
    /**
     * promotionPlatformAmount
     */
    @JsonProperty("promotion_platform_amount")
    private Integer promotionPlatformAmount;
    /**
     * sumAmount
     */
    @JsonProperty("sum_amount")
    private Integer sumAmount;
    /**
     * accountList
     */
    @JsonProperty("account_list")
    private AccountListBean accountList;
    /**
     * payType
     */
    @JsonProperty("pay_type")
    private int payType;
    /**
     * inventoryTypeDesc
     */
    @JsonProperty("inventory_type_desc")
    private String inventoryTypeDesc;
    /**
     * cid
     */
    @JsonProperty("cid")
    private Long cid;
    /**
     * itemNum
     */
    @JsonProperty("item_num")
    private int itemNum;
    /**
     * givenProductType
     */
    @JsonProperty("given_product_type")
    private String givenProductType;
    /**
     * cardVoucher
     */
    @JsonProperty("card_voucher")
    private CardVoucherBean cardVoucher;
    /**
     * maskPostReceiver
     */
    @JsonProperty("mask_post_receiver")
    private String maskPostReceiver;
    /**
     * orderLevel
     */
    @JsonProperty("order_level")
    private int orderLevel;
    /**
     * createTime
     */
    @JsonProperty("create_time")
    private Integer createTime;
    /**
     * bTypeDesc
     */
    @JsonProperty("b_type_desc")
    private String bTypeDesc;
    /**
     * bundleSkuInfo
     */
    @JsonProperty("bundle_sku_info")
    private List<?> bundleSkuInfo;
    /**
     * subBTypeDesc
     */
    @JsonProperty("sub_b_type_desc")
    private String subBTypeDesc;
    /**
     * fourthCid
     */
    @JsonProperty("fourth_cid")
    private Long fourthCid;
    /**
     * outSkuId
     */
    @JsonProperty("out_sku_id")
    private String outSkuId;
    /**
     * masterSkuOrderId
     */
    @JsonProperty("master_sku_order_id")
    private String masterSkuOrderId;
    /**
     * goodsType
     */
    @JsonProperty("goods_type")
    private int goodsType;
    /**
     * taxAmount
     */
    @JsonProperty("tax_amount")
    private Integer taxAmount;
    /**
     * extraInfo
     */
    @JsonProperty("extra_info")
    private Map<String,String> extraInfo;
    /**
     * promotionPayAmountDetails
     */
    @JsonProperty("promotion_pay_amount_details")
    private List<?> promotionPayAmountDetails;
    /**
     * payAmount
     */
    @JsonProperty("pay_amount")
    private Integer payAmount;
    /**
     * preSaleType
     */
    @JsonProperty("pre_sale_type")
    private int preSaleType;
    /**
     * maskPostAddr
     */
    @JsonProperty("mask_post_addr")
    private MaskPostAddrBeanX maskPostAddr;
    /**
     * orderType
     */
    @JsonProperty("order_type")
    private int orderType;
    /**
     * updateTime
     */
    @JsonProperty("update_time")
    private Integer updateTime;
    /**
     * thirdCid
     */
    @JsonProperty("third_cid")
    private Long thirdCid;
    /**
     * logisticsReceiptTime
     */
    @JsonProperty("logistics_receipt_time")
    private Integer logisticsReceiptTime;
    /**
     * inventoryList
     */
    @JsonProperty("inventory_list")
    private List<InventoryListBean> inventoryList;
    /**
     * mainStatusDesc
     */
    @JsonProperty("main_status_desc")
    private String mainStatusDesc;
    /**
     * channelPaymentNo
     */
    @JsonProperty("channel_payment_no")
    private String channelPaymentNo;
    /**
     * modifyPostAmount
     */
    @JsonProperty("modify_post_amount")
    private Integer modifyPostAmount;
    /**
     * skuOrderTagUi
     */
    @JsonProperty("sku_order_tag_ui")
    private List<SkuOrderTagUiBean> skuOrderTagUi;
    /**
     * maskPostTel
     */
    @JsonProperty("mask_post_tel")
    private String maskPostTel;
    /**
     * authorId
     */
    @JsonProperty("author_id")
    private Long authorId;
    /**
     * authorName
     */
    @JsonProperty("author_name")
    private String authorName;
    /**
     * warehouseIds
     */
    @JsonProperty("warehouse_ids")
    private List<?> warehouseIds;
    /**
     * promotionRedpackTalentAmount
     */
    @JsonProperty("promotion_redpack_talent_amount")
    private Integer promotionRedpackTalentAmount;
    /**
     * goodsPrice
     */
    @JsonProperty("goods_price")
    private Integer goodsPrice;
    /**
     * orderTypeDesc
     */
    @JsonProperty("order_type_desc")
    private String orderTypeDesc;
    /**
     * inventoryType
     */
    @JsonProperty("inventory_type")
    private String inventoryType;
    /**
     * roomId
     */
    @JsonProperty("room_id")
    private Long roomId;
    /**
     * promotionPayAmount
     */
    @JsonProperty("promotion_pay_amount")
    private Integer promotionPayAmount;
    /**
     * code
     */
    @JsonProperty("code")
    private String code;
    /**
     * cBizDesc
     */
    @JsonProperty("c_biz_desc")
    private String cBizDesc;
    /**
     * promotionShopAmount
     */
    @JsonProperty("promotion_shop_amount")
    private Integer promotionShopAmount;
    /**
     * supplierId
     */
    @JsonProperty("supplier_id")
    private String supplierId;
    /**
     * orderStatusDesc
     */
    @JsonProperty("order_status_desc")
    private String orderStatusDesc;
    /**
     * payTime
     */
    @JsonProperty("pay_time")
    private Integer payTime;
    /**
     * themeType
     */
    @JsonProperty("theme_type")
    private String themeType;
    /**
     * tradeTypeDesc
     */
    @JsonProperty("trade_type_desc")
    private String tradeTypeDesc;
    /**
     * postReceiver
     */
    @JsonProperty("post_receiver")
    private String postReceiver;
    /**
     * secondCid
     */
    @JsonProperty("second_cid")
    private Long secondCid;
    /**
     * outWarehouseIds
     */
    @JsonProperty("out_warehouse_ids")
    private List<?> outWarehouseIds;
    /**
     * biz
     */
    @JsonProperty("biz")
    private Long biz;
    /**
     * orderStatus
     */
    @JsonProperty("order_status")
    private int orderStatus;
    /**
     * appId
     */
    @JsonProperty("app_id")
    private Long appId;
    /**
     * pageId
     */
    @JsonProperty("page_id")
    private Long pageId;
    /**
     * needSerialNumber
     */
    @JsonProperty("need_serial_number")
    private boolean needSerialNumber;
    /**
     * skuId
     */
    @JsonProperty("sku_id")
    private Long skuId;
    /**
     * outProductId
     */
    @JsonProperty("out_product_id")
    private String outProductId;
    /**
     * authorCostAmount
     */
    @JsonProperty("author_cost_amount")
    private Integer authorCostAmount;
    /**
     * sendPay
     */
    @JsonProperty("send_pay")
    private int sendPay;
    /**
     * productId
     */
    @JsonProperty("product_id")
    private Long productId;
    /**
     * orderId
     */
    @JsonProperty("order_id")
    private String orderId;
    /**
     * bizDesc
     */
    @JsonProperty("biz_desc")
    private String bizDesc;
    /**
     * subBType
     */
    @JsonProperty("sub_b_type")
    private int subBType;
    /**
     * tradeType
     */
    @JsonProperty("trade_type")
    private int tradeType;
    /**
     * sourcePlatform
     */
    @JsonProperty("source_platform")
    private String sourcePlatform;
    /**
     * promiseInfo
     */
    @JsonProperty("promise_info")
    private String promiseInfo;
    /**
     * packingChargeAmount
     */
    @JsonProperty("packing_charge_amount")
    private Integer packingChargeAmount;
    /**
     * postAddr
     */
    @JsonProperty("post_addr")
    private PostAddrBeanX postAddr;
    /**
     * postAmount
     */
    @JsonProperty("post_amount")
    private Integer postAmount;
    /**
     * shipTime
     */
    @JsonProperty("ship_time")
    private Integer shipTime;
    /**
     * promotionRedpackAmount
     */
    @JsonProperty("promotion_redpack_amount")
    private Integer promotionRedpackAmount;
    /**
     * appointmentShipTime
     */
    @JsonProperty("appointment_ship_time")
    private Integer appointmentShipTime;
    /**
     * skuCustomizationInfo
     */
    @JsonProperty("sku_customization_info")
    private List<?> skuCustomizationInfo;
    /**
     * modifyAmount
     */
    @JsonProperty("modify_amount")
    private Integer modifyAmount;
    /**
     * promotionAmount
     */
    @JsonProperty("promotion_amount")
    private Integer promotionAmount;
    /**
     * expShipTime
     */
    @JsonProperty("exp_ship_time")
    private Integer expShipTime;
    /**
     * reduceStockTypeDesc
     */
    @JsonProperty("reduce_stock_type_desc")
    private String reduceStockTypeDesc;
    /**
     * productName
     */
    @JsonProperty("product_name")
    private String productName;
    /**
     * postTel
     */
    @JsonProperty("post_tel")
    private String postTel;
    /**
     * reduceStockType
     */
    @JsonProperty("reduce_stock_type")
    private int reduceStockType;
    /**
     * isComment
     */
    @JsonProperty("is_comment")
    private int isComment;
    /**
     * orderExpireTime
     */
    @JsonProperty("order_expire_time")
    private Integer orderExpireTime;
    /**
     * encryptPostReceiver
     */
    @JsonProperty("encrypt_post_receiver")
    private String encryptPostReceiver;
    /**
     * postInsuranceAmount
     */
    @JsonProperty("post_insurance_amount")
    private Integer postInsuranceAmount;
    /**
     * parentOrderId
     */
    @JsonProperty("parent_order_id")
    private String parentOrderId;
    /**
     * cancelReason
     */
    @JsonProperty("cancel_reason")
    private String cancelReason;
    /**
     * videoId
     */
    @JsonProperty("video_id")
    private String videoId;
    /**
     * cBiz
     */
    @JsonProperty("c_biz")
    private Long cBiz;
    /**
     * receiveType
     */
    @JsonProperty("receive_type")
    private int receiveType;
    /**
     * roomIdStr
     */
    @JsonProperty("room_id_str")
    private String roomIdStr;
    /**
     * onlyPlatformCostAmount
     */
    @JsonProperty("only_platform_cost_amount")
    private Integer onlyPlatformCostAmount;
    /**
     * bType
     */
    @JsonProperty("b_type")
    private int bType;
    /**
     * sendPayDesc
     */
    @JsonProperty("send_pay_desc")
    private String sendPayDesc;
    /**
     * contentId
     */
    @JsonProperty("content_id")
    private String contentId;
    /**
     * adEnvType
     */
    @JsonProperty("ad_env_type")
    private String adEnvType;
    /**
     * encryptPostTel
     */
    @JsonProperty("encrypt_post_tel")
    private String encryptPostTel;
    /**
     * qualityInspectionStatus
     */
    @JsonProperty("quality_inspection_status")
    private int qualityInspectionStatus;
    /**
     * mainStatus
     */
    @JsonProperty("main_status")
    private int mainStatus;
    /**
     * finishTime
     */
    @JsonProperty("finish_time")
    private Integer finishTime;
    /**
     * firstCid
     */
    @JsonProperty("first_cid")
    private Long firstCid;
    /**
     * originAmount
     */
    @JsonProperty("origin_amount")
    private Integer originAmount;
    /**
     * hasTax
     */
    @JsonProperty("has_tax")
    private boolean hasTax;
    /**
     * promotionRedpackPlatformAmount
     */
    @JsonProperty("promotion_redpack_platform_amount")
    private Integer promotionRedpackPlatformAmount;
    /**
     * originId
     */
    @JsonProperty("origin_id")
    private String originId;
    /**
     * platformCostAmount
     */
    @JsonProperty("platform_cost_amount")
    private Integer platformCostAmount;
    /**
     * spec
     */
    @JsonProperty("spec")
    private List<SpecBean> spec;
    /**
     * promotionTalentAmount
     */
    @JsonProperty("promotion_talent_amount")
    private Integer promotionTalentAmount;
    /**
     * afterSaleInfo
     */
    @JsonProperty("after_sale_info")
    private AfterSaleInfoBean afterSaleInfo;
}
