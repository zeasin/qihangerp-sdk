package cn.qihangerp.open.xhs.response;

import lombok.Data;

import java.util.List;

@Data
public class GoodsItemInfo {
    private String id;//商品itemId
    private String name;//商品item标题
    private String ename;//商品item英文名
    private Integer brandId;//品牌ID,目前查询品牌返回均为String但是是数字可以强转成Long使用
    private String categoryId;//末级商品类目ID,根据common.getCategories获取
    private String[] attributes;//item属性，根据common.getAttributeLists和common.getAttributeValues获取，必填属性必填，无必填属性可不填
    private String shippingTemplateId;//运费模板ID，根据common.getCarriageTemplateList获取
    private Integer shippingGrossWeight;//商品物流重量（克），当运费模版选择按重量计费时，该值必须大于0
    private String[] variantIds;//定义item可以有的规格类型，例如颜色，尺码，sku依赖了此处定义的规格类型
    private String[] images;//商品主图(必传)
    private String videoUrl;//主图视频
    private String articleNo;//商品货号
    private String[] imageDescriptions;//商品详情描述图片
    private String transparentImage;//透明图
    private String description;//商品描述文字，上限500字
    private String[] faq;//常见问题
    private Boolean isChannel;//是否是渠道商品
    private Integer deliveryMode;//物流模式,0：普通，1：支持无物流发货（限定类目支持，不支持的类目创建会报错）
    private Boolean freeReturn;//是否支持7天无理由,1：支持，2：不支持，不传会按照规则给默认值，必须支持则支持，不必须则不支持
    private String enableMultiWarehouse;//是否启用多仓
    private Long createTime;//创建时间
    private Long updateTime;//更新时间
    private String sizeTableImage;//基础尺码表
    private String recommendSizeTableImage;//尺码推荐表
    private String modelTryOnSizeTableImage;//模特试穿表
    private Boolean enableMainSpecImage;//是否启用规格大图
    private String mainSpecId;//主规格id
    private Boolean enableStepPresale;//是否启用了阶梯预售
    private String itemShortTitle;//商品短标题 (长度限制：最小6个汉字12个字符，最大12个汉字24个字符)

    private List<GoodsItemSku> skus;
}
