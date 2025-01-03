package cn.qihangerp.open.pdd.model;

import lombok.Data;

import java.util.List;

@Data
public class GoodsResultVo {
    private Integer totalCount;
    private List<Goods> goodsList;

    public GoodsResultVo(Integer totalCount, List<Goods> goodsList) {
        this.totalCount = totalCount;
        this.goodsList = goodsList;
    }
}
