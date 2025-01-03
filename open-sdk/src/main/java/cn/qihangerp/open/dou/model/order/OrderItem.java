package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

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
    private int shopCostAmount;
    /**
     * confirmReceiptTime
     */
    @JsonProperty("confirm_receipt_time")
    private int confirmReceiptTime;
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
    private int orderAmount;
    /**
     * promotionPlatformAmount
     */
    @JsonProperty("promotion_platform_amount")
    private int promotionPlatformAmount;
    /**
     * sumAmount
     */
    @JsonProperty("sum_amount")
    private int sumAmount;
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
    private int createTime;
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
    private int fourthCid;
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
    private int taxAmount;
    /**
     * extraInfo
     */
    @JsonProperty("extra_info")
    private ExtraInfoBean extraInfo;
    /**
     * promotionPayAmountDetails
     */
    @JsonProperty("promotion_pay_amount_details")
    private List<?> promotionPayAmountDetails;
    /**
     * payAmount
     */
    @JsonProperty("pay_amount")
    private int payAmount;
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
    private int updateTime;
    /**
     * thirdCid
     */
    @JsonProperty("third_cid")
    private int thirdCid;
    /**
     * logisticsReceiptTime
     */
    @JsonProperty("logistics_receipt_time")
    private int logisticsReceiptTime;
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
    private int modifyPostAmount;
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
    private int authorId;
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
    private int promotionRedpackTalentAmount;
    /**
     * goodsPrice
     */
    @JsonProperty("goods_price")
    private int goodsPrice;
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
    private int roomId;
    /**
     * promotionPayAmount
     */
    @JsonProperty("promotion_pay_amount")
    private int promotionPayAmount;
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
    private int promotionShopAmount;
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
    private int payTime;
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
    private int secondCid;
    /**
     * outWarehouseIds
     */
    @JsonProperty("out_warehouse_ids")
    private List<?> outWarehouseIds;
    /**
     * biz
     */
    @JsonProperty("biz")
    private int biz;
    /**
     * orderStatus
     */
    @JsonProperty("order_status")
    private int orderStatus;
    /**
     * appId
     */
    @JsonProperty("app_id")
    private int appId;
    /**
     * pageId
     */
    @JsonProperty("page_id")
    private int pageId;
    /**
     * needSerialNumber
     */
    @JsonProperty("need_serial_number")
    private boolean needSerialNumber;
    /**
     * skuId
     */
    @JsonProperty("sku_id")
    private long skuId;
    /**
     * outProductId
     */
    @JsonProperty("out_product_id")
    private String outProductId;
    /**
     * authorCostAmount
     */
    @JsonProperty("author_cost_amount")
    private int authorCostAmount;
    /**
     * sendPay
     */
    @JsonProperty("send_pay")
    private int sendPay;
    /**
     * productId
     */
    @JsonProperty("product_id")
    private long productId;
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
    private int packingChargeAmount;
    /**
     * postAddr
     */
    @JsonProperty("post_addr")
    private PostAddrBeanX postAddr;
    /**
     * postAmount
     */
    @JsonProperty("post_amount")
    private int postAmount;
    /**
     * shipTime
     */
    @JsonProperty("ship_time")
    private int shipTime;
    /**
     * promotionRedpackAmount
     */
    @JsonProperty("promotion_redpack_amount")
    private int promotionRedpackAmount;
    /**
     * appointmentShipTime
     */
    @JsonProperty("appointment_ship_time")
    private int appointmentShipTime;
    /**
     * skuCustomizationInfo
     */
    @JsonProperty("sku_customization_info")
    private List<?> skuCustomizationInfo;
    /**
     * modifyAmount
     */
    @JsonProperty("modify_amount")
    private int modifyAmount;
    /**
     * promotionAmount
     */
    @JsonProperty("promotion_amount")
    private int promotionAmount;
    /**
     * expShipTime
     */
    @JsonProperty("exp_ship_time")
    private int expShipTime;
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
    private int orderExpireTime;
    /**
     * encryptPostReceiver
     */
    @JsonProperty("encrypt_post_receiver")
    private String encryptPostReceiver;
    /**
     * postInsuranceAmount
     */
    @JsonProperty("post_insurance_amount")
    private int postInsuranceAmount;
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
    private int cBiz;
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
    private int onlyPlatformCostAmount;
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
    private int finishTime;
    /**
     * firstCid
     */
    @JsonProperty("first_cid")
    private int firstCid;
    /**
     * originAmount
     */
    @JsonProperty("origin_amount")
    private int originAmount;
    /**
     * hasTax
     */
    @JsonProperty("has_tax")
    private boolean hasTax;
    /**
     * promotionRedpackPlatformAmount
     */
    @JsonProperty("promotion_redpack_platform_amount")
    private int promotionRedpackPlatformAmount;
    /**
     * originId
     */
    @JsonProperty("origin_id")
    private String originId;
    /**
     * platformCostAmount
     */
    @JsonProperty("platform_cost_amount")
    private int platformCostAmount;
    /**
     * spec
     */
    @JsonProperty("spec")
    private List<SpecBean> spec;
    /**
     * promotionTalentAmount
     */
    @JsonProperty("promotion_talent_amount")
    private int promotionTalentAmount;
    /**
     * afterSaleInfo
     */
    @JsonProperty("after_sale_info")
    private AfterSaleInfoBean afterSaleInfo;
}
