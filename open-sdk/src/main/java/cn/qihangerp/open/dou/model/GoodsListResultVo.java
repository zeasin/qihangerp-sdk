package cn.qihangerp.open.dou.model;

import lombok.Data;

import java.util.List;

@Data
public class GoodsListResultVo {
    private Integer total;
    private List<Goods> goodsList;

    public GoodsListResultVo(Integer total, List<Goods> goodsList) {
        this.total = total;
        this.goodsList = goodsList;
    }
}
