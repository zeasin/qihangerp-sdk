package cn.qihangerp.open.jd.model.vc;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class PurchaseOrder {

    /**
     * 收货电话
     */
    @JsonProperty("warehouse_phone")
    private String warehousePhone;
    /**
     * 采购类型名称
     */
    @JsonProperty("order_type_name")
    private String orderTypeName;
    /**
     * 完成日期
     */
    @JsonProperty("complete_date")
    private long completeDate;
    /**
     * TC转运标识显示
     */
    @JsonProperty("tc_flag_name")
    private String tcFlagName;
    /**
     * 顾客单号（只有EPT采购单才有）
     */
    @JsonProperty("custom_order_id")
    private long customOrderId;
    /**
     * 是否可回告（true:可回告;false:不可回告）
     */
    @JsonProperty("is_can_confirm")
    private boolean isCanConfirm;
    /**
     * TC转运标识：0:否,1:是
     */
    @JsonProperty("tc_flag")
    private int tcFlag;
    /**
     * 订单状态名称
     */
    @JsonProperty("state_name")
    private String stateName;
    /**
     * 采购员姓名
     */
    @JsonProperty("purchaser_name")
    private String purchaserName;
    /**
     * 收货负责人
     */
    @JsonProperty("receiver_name")
    private String receiverName;
    /**
     * 品总数量（sku为维度）
     */
    @JsonProperty("ware_variety")
    private int wareVariety;
    /**
     * 订单状态3：订单完成
     */
    private int state;
    /**
     * 供应商名称
     */
    @JsonProperty("provider_name")
    private String providerName;
    /**
     * 采购类型：正常采购单2厂商直送
     */
    @JsonProperty("order_type")
    private int orderType;
    /**
     * 订单属性名称
     */
    @JsonProperty("order_attribute_name")
    private String orderAttributeName;
    /**
     * 配送中心编号（订购城市）；此信息请调用接口jingdong.vc.getwaredeliverdistinctlist方法获取，选择的code
     */
    @JsonProperty("deliver_center_id")
    private int deliverCenterId;
    /**
     * 是否有差异（0 表示存在差异 ）
     */
    @JsonProperty("is_exist_actual_num_dif")
    private int isExistActualNumDif;
    /**
     * 订单属性
     */
    @JsonProperty("order_attribute")
    private int orderAttribute;
    /**
     * 详细地址
     */
    private String address;
    /**
     * 采购总金额
     */
    @JsonProperty("total_price")
    private int totalPrice;
    /**
     * 删除状态名称
     */
    @JsonProperty("status_name")
    private String statusName;
    /**
     * 回告状态ID：回告成功
     */
    @JsonProperty("confirm_state")
    private int confirmState;
    /**
     * 更新时间
     */
    @JsonProperty("update_date")
    private long updateDate;
    /**
     * 配送中心名称（订购城市名称）
     */
    @JsonProperty("deliver_center_name")
    private String deliverCenterName;
    /**
     * 回告状态名称
     */
    @JsonProperty("confirm_state_name")
    private String confirmStateName;
    /**
     * 是否已结算（true:是;false:否）
     */
    @JsonProperty("balance_status")
    private boolean balanceStatus;
    /**
     * 账期
     */
    @JsonProperty("account_period")
    private int accountPeriod;
    /**
     * 供应商简码
     */
    @JsonProperty("provider_code")
    private String providerCode;
    /**
     * 订购时间
     */
    @JsonProperty("created_date")
    private long createdDate;
    /**
     * 采购单号
     */
    @JsonProperty("order_id")
    private int orderId;
    /**
     * 购员京东ERP账号
     */
    @JsonProperty("purchaser_erp_code")
    private String purchaserErpCode;
    /**
     * 删除状态；此信息请调用接口jingdong.vc.getcomponentlist方法获取，选择的code
     */
    private int status;
}
