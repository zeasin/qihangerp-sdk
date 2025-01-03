package cn.qihangerp.open.pdd.model;

import lombok.Data;

import java.util.List;

@Data
public class OrderListResultVo {
    private Boolean hasNext;
    private List<Order> orderList;

    public OrderListResultVo(Boolean hasNext, List<Order> orderList) {
        this.hasNext = hasNext;
        this.orderList = orderList;
    }
}
