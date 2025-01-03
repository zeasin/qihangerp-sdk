package cn.qihangerp.open.jd.request;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class WaybillReceiveRequest {
    private Integer waybillType;
    private Integer waybillCount;
    private Integer providerId;
    private String salePlatform;
    private String providerCode;
    private String branchCode;
    private String platformOrderNo;
    private String settlementCode;
    private String vendorCode;
    private String vendorName;
    private String vendorOrderCode;
    private BigDecimal weight;
    private BigDecimal volume;
    private Integer payType;
    private BigDecimal goodsMoney;
    private BigDecimal shouldPayMoney;
    private Boolean needGuarantee;
    private BigDecimal guaranteeMoney;
    private Integer receiveTimeType;
    private WaybillAddress fromAddress;
    private WaybillAddress toAddress;

}
