package cn.qihangerp.open.dou.model;

import lombok.Data;

@lombok.NoArgsConstructor
@Data
public class GoodsSku {


    /**
     * channelStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("channel_stock_num")
    private int channelStockNum;
    /**
     * code
     */
    private String code;
    /**
     * createTime
     */
    @com.fasterxml.jackson.annotation.JsonProperty("create_time")
    private int createTime;
    /**
     * id
     */
    private Long id;
    /**
     * isSuit
     */
    @com.fasterxml.jackson.annotation.JsonProperty("is_suit")
    private int isSuit;
    /**
     * normalStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("normal_stock_num")
    private int normalStockNum;
    /**
     * openUserId
     */
    @com.fasterxml.jackson.annotation.JsonProperty("open_user_id")
    private Long openUserId;
    /**
     * outSkuId
     */
    @com.fasterxml.jackson.annotation.JsonProperty("out_sku_id")
    private Long outSkuId;
    /**
     * preholdStepStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("prehold_step_stock_num")
    private int preholdStepStockNum;
    /**
     * preholdStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("prehold_stock_num")
    private int preholdStockNum;
    /**
     * price
     */
    private int price;
    /**
     * productId
     */
    @com.fasterxml.jackson.annotation.JsonProperty("product_id")
    private Long productId;
    /**
     * productIdStr
     */
    @com.fasterxml.jackson.annotation.JsonProperty("product_id_str")
    private String productIdStr;
    /**
     * promStepStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("prom_step_stock_num")
    private int promStepStockNum;
    /**
     * promStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("prom_stock_num")
    private int promStockNum;
    /**
     * sellProperties
     */
    @com.fasterxml.jackson.annotation.JsonProperty("sell_properties")
    private java.util.List<SellPropertiesBean> sellProperties;
    /**
     * sku状态 true上架 false下架
     */
    @com.fasterxml.jackson.annotation.JsonProperty("sku_status")
    private boolean skuStatus;
    /**
     * 库存类型；0-普通；1-区域库存；10-阶梯库存；
     */
    @com.fasterxml.jackson.annotation.JsonProperty("sku_type")
    private int skuType;
    /**
     * specDetailId1
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_detail_id1")
    private Long specDetailId1;
    /**
     * specDetailId2
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_detail_id2")
    private Long specDetailId2;
    /**
     * specDetailId3
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_detail_id3")
    private Long specDetailId3;
    /**
     * specDetailName1
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_detail_name1")
    private String specDetailName1;
    /**
     * specDetailName2
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_detail_name2")
    private String specDetailName2;
    /**
     * specDetailName3
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_detail_name3")
    private String specDetailName3;
    /**
     * specId
     */
    @com.fasterxml.jackson.annotation.JsonProperty("spec_id")
    private Long specId;
    /**
     * stepStockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("step_stock_num")
    private int stepStockNum;
    /**
     * stockNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("stock_num")
    private int stockNum;
    /**
     * suitNum
     */
    @com.fasterxml.jackson.annotation.JsonProperty("suit_num")
    private int suitNum;
    /**
     * volume
     */
    private int volume;
}
