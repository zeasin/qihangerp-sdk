package cn.qihangerp.open.pdd.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
public class Goods {

    /**
     * 是否多sku，0-单sku，1-多sku
     */
    @JsonProperty("is_more_sku")
    private int isMoreSku;
    /**
     * 	商品名称
     */
    @JsonProperty("goods_name")
    private String goodsName;
    /**
     * 商品缩略图
     */
    @JsonProperty("thumb_url")
    private String thumbUrl;
//    /**
//     * goods_reserve_quantity
//     */
//    @JsonProperty("goods_reserve_quantity")
//    private int goods_reserve_quantity;
    /**
     * 商品图片
     */
    @JsonProperty("image_url")
    private String imageUrl;
    /**
     * sku_list
     */
    @JsonProperty("sku_list")
    private List<GoodsSku> skuList;
    /**
     * 商品总数量
     */
    @JsonProperty("goods_quantity")
    private int goodsQuantity;
    /**
     * 商品编码
     */
    @JsonProperty("goods_id")
    private Long goodsId;
    /**
     * 商品创建时间的时间戳
     */
    @JsonProperty("created_at")
    private int createdAt;
    /**
     * 是否在架上，0-下架中，1-架上
     */
    @JsonProperty("is_onsale")
    private int isOnsale;

}
