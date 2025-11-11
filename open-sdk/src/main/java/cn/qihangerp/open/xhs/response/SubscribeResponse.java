package cn.qihangerp.open.xhs.response;

import cn.qihangerp.open.xhs.model.SenderAddress;
import lombok.Data;

import java.util.List;

@Data
public class SubscribeResponse {
    private String cpCode;
    private String cpName;
    private Integer cpType;
    private String branchCode;
    private String branchName;
    private String brandCode;
    private String customerCode;
    private Usage usage;
    private List<SenderAddress> senderAddressList;

    @Data
    public static class Usage{
        private Integer quantity;
        private Integer allocatedQuantity;
        private Integer cancelQuantity;
        private Integer recycledQuantity;
    }
}
