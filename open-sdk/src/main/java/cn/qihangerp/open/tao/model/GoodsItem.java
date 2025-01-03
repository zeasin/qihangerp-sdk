package cn.qihangerp.open.tao.model;

import java.util.List;

public class GoodsItem {
    /**
     * approve_status : onsale
     * cid : 50001709
     * delist_time : 2024-05-13 17:02:11
     * has_discount : false
     * has_invoice : true
     * has_showcase : false
     * has_warranty : true
     * list_time : 2024-04-29 17:02:11
     * modified : 2024-04-29 11:58:31
     * nick : 曲美家具官方旗舰店
     * num : 217
     * num_iid : 739001644762
     * outer_id :
     * pic_url : https://img.alicdn.com/bao/uploaded/i1/351855490/O1CN01NiKE4b1qQTM10KuAW_!!0-item_pic.jpg
     * postage_id : 16478778153
     * price : 5399.00
     * props : 20000:1943998767;207946457:27393814528;20021:3260684;20608:4124514;20819:98481;1627207:27455051557;1627207:28085106694;1627207:28085106695;3862454:3236507;10133867:21959;10187641:21959;13744110:57893720;122216951:20213;122276279:20213;122276279:3296869;122276279:3296966;122276279:3296823;122276279:3296786;122276279:29428;122276279:3296902;122276279:3262688;122276279:3296901;122276279:3297048;122276279:3296785;122276279:3296903;122276279:3296873;122276279:3297322;122276279:3297273;122276279:3297023;122276279:29404;122276279:3296907;122276279:3297062;122276279:29423;122276279:3297097;122276279:29400;122276279:3297082;122276279:102484;122276279:3296950;122276279:3296998;122276279:3296870;122276279:3296910;122276279:3296872;122276279:3297086;122276279:3296951;122276279:3297109;122450261:29400;122582666:21958;122640606:27432;128164783:21959;128714175:3296697;128716198:52838;139872369:3220845;140084359:676518332;148060595:21597238096
     * seller_cids : ,1621549957,1621549091,
     * sold_quantity : 23
     * title : 曲美家居现代轻奢北欧风3C钢化玻璃茶几客厅茶几弯曲木工艺摩尔
     * type : fixed
     * valid_thru : 14
     */

    private String approve_status;
    private int cid;
    private String delist_time;
    private boolean has_discount;
    private boolean has_invoice;
    private boolean has_showcase;
    private boolean has_warranty;
    private String list_time;
    private String modified;
    private String nick;
    private int num;
    private long num_iid;
    private String outer_id;
    private String pic_url;
    private long postage_id;
    private String price;
    private String props;
    private String seller_cids;
    private int sold_quantity;
    private String title;
    private String type;
    private int valid_thru;

    private List<GoodsItemSku> skuList;

    public List<GoodsItemSku> getSkuList() {
        return skuList;
    }

    public void setSkuList(List<GoodsItemSku> skuList) {
        this.skuList = skuList;
    }

    public String getApprove_status() {
        return approve_status;
    }

    public void setApprove_status(String approve_status) {
        this.approve_status = approve_status;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getDelist_time() {
        return delist_time;
    }

    public void setDelist_time(String delist_time) {
        this.delist_time = delist_time;
    }

    public boolean isHas_discount() {
        return has_discount;
    }

    public void setHas_discount(boolean has_discount) {
        this.has_discount = has_discount;
    }

    public boolean isHas_invoice() {
        return has_invoice;
    }

    public void setHas_invoice(boolean has_invoice) {
        this.has_invoice = has_invoice;
    }

    public boolean isHas_showcase() {
        return has_showcase;
    }

    public void setHas_showcase(boolean has_showcase) {
        this.has_showcase = has_showcase;
    }

    public boolean isHas_warranty() {
        return has_warranty;
    }

    public void setHas_warranty(boolean has_warranty) {
        this.has_warranty = has_warranty;
    }

    public String getList_time() {
        return list_time;
    }

    public void setList_time(String list_time) {
        this.list_time = list_time;
    }

    public String getModified() {
        return modified;
    }

    public void setModified(String modified) {
        this.modified = modified;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public long getNum_iid() {
        return num_iid;
    }

    public void setNum_iid(long num_iid) {
        this.num_iid = num_iid;
    }

    public String getOuter_id() {
        return outer_id;
    }

    public void setOuter_id(String outer_id) {
        this.outer_id = outer_id;
    }

    public String getPic_url() {
        return pic_url;
    }

    public void setPic_url(String pic_url) {
        this.pic_url = pic_url;
    }

    public long getPostage_id() {
        return postage_id;
    }

    public void setPostage_id(long postage_id) {
        this.postage_id = postage_id;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getProps() {
        return props;
    }

    public void setProps(String props) {
        this.props = props;
    }

    public String getSeller_cids() {
        return seller_cids;
    }

    public void setSeller_cids(String seller_cids) {
        this.seller_cids = seller_cids;
    }

    public int getSold_quantity() {
        return sold_quantity;
    }

    public void setSold_quantity(int sold_quantity) {
        this.sold_quantity = sold_quantity;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getValid_thru() {
        return valid_thru;
    }

    public void setValid_thru(int valid_thru) {
        this.valid_thru = valid_thru;
    }
}
