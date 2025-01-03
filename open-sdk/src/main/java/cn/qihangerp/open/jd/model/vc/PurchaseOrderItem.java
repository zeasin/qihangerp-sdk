package cn.qihangerp.open.jd.model.vc;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class PurchaseOrderItem {

    /**
     * 原始采购数量
     */
    @JsonProperty("original_num")
    private int originalNum;
    /**
     * 采购单号
     */
    @JsonProperty("order_id")
    private int orderId;
    /**
     * 采购价，单位元
     */
    @JsonProperty("purchase_price")
    private int purchasePrice;
    /**
     * 商品名称
     */
    @JsonProperty("ware_name")
    private String wareName;
    /**
     * 配送中心名称
     */
    @JsonProperty("deliver_center_name")
    private String deliverCenterName;
    /**
     * 回告数量或者采购数量
     */
    @JsonProperty("confirm_num")
    private int confirmNum;
    /**
     * 配送中心ID（配送机构
     */
    @JsonProperty("deliver_center_id")
    private int deliverCenterId;
    /**
     * 亚洲一号小件库
     */
    @JsonProperty("store_name")
    private String storeName;
    /**
     * 实收数量
     */
    @JsonProperty("actual_num")
    private int actualNum;
    /**
     * 商品编号
     */
    @JsonProperty("ware_id")
    private long wareId;
    /**
     * 采购总金额，单位元
     */
    @JsonProperty("totoal_price")
    private int totoalPrice;
    /**
     * 库房ID
     */
    @JsonProperty("store_id")
    private int storeId;
}
