package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * InventoryListBean
 */
@NoArgsConstructor
@Data
public class InventoryListBean {
    /**
     * inventoryTypeDesc
     */
    @JsonProperty("inventory_type_desc")
    private String inventoryTypeDesc;
    /**
     * count
     */
    @JsonProperty("count")
    private int count;
    /**
     * warehouseType
     */
    @JsonProperty("warehouse_type")
    private int warehouseType;
    /**
     * warehouseId
     */
    @JsonProperty("warehouse_id")
    private String warehouseId;
    /**
     * outWarehouseId
     */
    @JsonProperty("out_warehouse_id")
    private String outWarehouseId;
    /**
     * inventoryType
     */
    @JsonProperty("inventory_type")
    private int inventoryType;
}
