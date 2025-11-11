package cn.qihangerp.open.xhs.response;

import lombok.Data;

import java.util.List;

@Data
public class AfterSaleInfoResponse {
    private String returnsId;//售后id
    private Integer returnType;//售后类型 1-退货 2-换货 4-已发货仅退款 5-未发货仅退款
    private Integer reasonId;//申请售后的原因id
    private String reasonNameZh;//申请售后的原因名称
    private Integer status;//售后状态 1-待审核 2-待用户寄回 3-待商家收货 4-已完成 5-已取消6-已关闭 9-商家审核拒绝 9001-商家收货拒绝12-换货待商家发货 13-换货待用户确认收货 14-平台介入中
    private Integer orderStatus;//订单状态，1已下单待付款 2已支付处理中 3清关中 4待发货 5部分发货 6待收货 7已完成 8已关闭 9已取消 10换货申请中
    private String userId;//用户id
    private String orderId;//
    private Long applyTime;
    private Long updatedAt;
    private Long expireTime;
    private String desc;
    private Integer returnsTag;//售后自动流程标记 1-命中平台极速退款 2-命中商家极速退款3-命中售后助手策略4-七天无理由自动审核32-命中发货后极速退款 35-命中发货后极速退款+售后助手策略36-命中发货后极速退款+七天无理由审核
    private Double expectedRefundAmountYuan;//本次售后预期退的钱总额，元
    private String openAddressId;
    private double appliedShipFeeAmountYuan;//用户申请售后运费金额，元
    private double appliedSkusAmountYuan;//用户申请售后商品金额，元
    private double refundAmountYuan;//实际已退款总额，包括定金，元
    private int refundStatus;//退款状态 退款状态 108触发退款 1退款中 3退款失败 2退款成功 401已取消 101已创建 201待审核 301审核通过 302审核不通过 402自动关闭
    private long refundTime;//退款完成时间
    private int cargoStatus;//已发货仅退款申请时 选择的货物状态 0:未选择 1：未收到货 2:已收到货

    private String closeReasonZh;//商家拒绝售后的原因

    //
    private Object returnAddress;

    private List<Sku> skus;

    private boolean supportCarriageInsurance;//是否支持运费险

    @Data
    public static class Sku{
        private String skuId;
        private String skuName;
        private String scskucode;
        private String barcode;
        private String image;
        private Integer appliedCount;//用户申请件数
        private Integer boughtCount;//购买件数
        private Double appliedTotalAmountYuan;//用户申请售后商品的钱
        private Double price;//sku单价
        private String skuERPCode;//商品ERPCode
        private Object variants;
    }



}
