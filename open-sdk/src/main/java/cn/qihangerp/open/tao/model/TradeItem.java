package cn.qihangerp.open.tao.model;

import java.util.List;

public class TradeItem {

    /**
     * adjust_fee : 0.00
     * bind_oids_all_status : 3830865662533421903
     * buyer_rate : false
     * cid : 50020000
     * consign_time : 2024-04-07 16:14:39
     * discount_fee : 3500.00
     * divide_order_fee : 2834.03
     * end_time : 2024-04-17 16:14:46
     * estimate_con_time : 付款后30天内
     * invoice_no : 908869012537
     * is_bybt_order : false
     * is_daixiao : false
     * is_idle : 0
     * is_jzfx : false
     * is_oversold : false
     * logistics_company : 平安达腾飞快递
     * num : 1
     * num_iid : 718529179488
     * oid : 3830865662531421903
     * oid_str : 3830865662531421903
     * order_attr : {"estConTime":"2_30"}
     * order_from : WAP,WAP
     * outer_sku_id : ZH-PC-2-DS-F1-QM23-B1-15
     * part_mjz_discount : 664.97
     * payment : 2834.03
     * pic_path : https://img.alicdn.com/bao/uploaded/i1/351855490/O1CN01wAbM871qQTFyhkpZF_!!351855490.jpg
     * price : 6999.00
     * refund_status : NO_REFUND
     * seller_rate : false
     * seller_type : B
     * ship_info : {"ship_info":[{"transport_type":"express"}]}
     * shipping_type : free
     * sku_id : 5008041840337
     * sku_properties_name : 家具结构:框架结构;颜色分类:架子款-浅咖色【进口真皮+双层海绵+松木排骨架】;尺寸:1500mm*2000mm
     * snapshot_url : x:3830865662531421903_1
     * status : TRADE_FINISHED
     * title : 【家装节价】曲美家居北欧简约真皮床轻奢高级温柔风主卧高脚左岸花园皮床新品
     * total_fee : 3499.00
     */

    private String adjust_fee;
    private String bind_oids_all_status;
    private boolean buyer_rate;
    private int cid;
    private String consign_time;
    private String discount_fee;
    private String divide_order_fee;
    private String end_time;
    private String estimate_con_time;
    private String invoice_no;
    private boolean is_bybt_order;
    private boolean is_daixiao;
    private String is_idle;
    private boolean is_jzfx;
    private boolean is_oversold;
    private String logistics_company;
    private int num;
    private long num_iid;
    private String oid;
    private String oid_str;
    private String order_attr;
    private String order_from;
    private String outer_sku_id;
    private String part_mjz_discount;
    private String payment;
    private String pic_path;
    private String price;
    private String refund_status;
    private boolean seller_rate;
    private String seller_type;
    private ShipInfoBeanX ship_info;
    private String shipping_type;
    private String sku_id;
    private String sku_properties_name;
    private String snapshot_url;
    private String status;
    private String title;
    private String total_fee;

    public String getAdjust_fee() {
        return adjust_fee;
    }

    public void setAdjust_fee(String adjust_fee) {
        this.adjust_fee = adjust_fee;
    }

    public String getBind_oids_all_status() {
        return bind_oids_all_status;
    }

    public void setBind_oids_all_status(String bind_oids_all_status) {
        this.bind_oids_all_status = bind_oids_all_status;
    }

    public boolean isBuyer_rate() {
        return buyer_rate;
    }

    public void setBuyer_rate(boolean buyer_rate) {
        this.buyer_rate = buyer_rate;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getConsign_time() {
        return consign_time;
    }

    public void setConsign_time(String consign_time) {
        this.consign_time = consign_time;
    }

    public String getDiscount_fee() {
        return discount_fee;
    }

    public void setDiscount_fee(String discount_fee) {
        this.discount_fee = discount_fee;
    }

    public String getDivide_order_fee() {
        return divide_order_fee;
    }

    public void setDivide_order_fee(String divide_order_fee) {
        this.divide_order_fee = divide_order_fee;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public String getEstimate_con_time() {
        return estimate_con_time;
    }

    public void setEstimate_con_time(String estimate_con_time) {
        this.estimate_con_time = estimate_con_time;
    }

    public String getInvoice_no() {
        return invoice_no;
    }

    public void setInvoice_no(String invoice_no) {
        this.invoice_no = invoice_no;
    }

    public boolean isIs_bybt_order() {
        return is_bybt_order;
    }

    public void setIs_bybt_order(boolean is_bybt_order) {
        this.is_bybt_order = is_bybt_order;
    }

    public boolean isIs_daixiao() {
        return is_daixiao;
    }

    public void setIs_daixiao(boolean is_daixiao) {
        this.is_daixiao = is_daixiao;
    }

    public String getIs_idle() {
        return is_idle;
    }

    public void setIs_idle(String is_idle) {
        this.is_idle = is_idle;
    }

    public boolean isIs_jzfx() {
        return is_jzfx;
    }

    public void setIs_jzfx(boolean is_jzfx) {
        this.is_jzfx = is_jzfx;
    }

    public boolean isIs_oversold() {
        return is_oversold;
    }

    public void setIs_oversold(boolean is_oversold) {
        this.is_oversold = is_oversold;
    }

    public String getLogistics_company() {
        return logistics_company;
    }

    public void setLogistics_company(String logistics_company) {
        this.logistics_company = logistics_company;
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

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getOid_str() {
        return oid_str;
    }

    public void setOid_str(String oid_str) {
        this.oid_str = oid_str;
    }

    public String getOrder_attr() {
        return order_attr;
    }

    public void setOrder_attr(String order_attr) {
        this.order_attr = order_attr;
    }

    public String getOrder_from() {
        return order_from;
    }

    public void setOrder_from(String order_from) {
        this.order_from = order_from;
    }

    public String getOuter_sku_id() {
        return outer_sku_id;
    }

    public void setOuter_sku_id(String outer_sku_id) {
        this.outer_sku_id = outer_sku_id;
    }

    public String getPart_mjz_discount() {
        return part_mjz_discount;
    }

    public void setPart_mjz_discount(String part_mjz_discount) {
        this.part_mjz_discount = part_mjz_discount;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getPic_path() {
        return pic_path;
    }

    public void setPic_path(String pic_path) {
        this.pic_path = pic_path;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getRefund_status() {
        return refund_status;
    }

    public void setRefund_status(String refund_status) {
        this.refund_status = refund_status;
    }

    public boolean isSeller_rate() {
        return seller_rate;
    }

    public void setSeller_rate(boolean seller_rate) {
        this.seller_rate = seller_rate;
    }

    public String getSeller_type() {
        return seller_type;
    }

    public void setSeller_type(String seller_type) {
        this.seller_type = seller_type;
    }

    public ShipInfoBeanX getShip_info() {
        return ship_info;
    }

    public void setShip_info(ShipInfoBeanX ship_info) {
        this.ship_info = ship_info;
    }

    public String getShipping_type() {
        return shipping_type;
    }

    public void setShipping_type(String shipping_type) {
        this.shipping_type = shipping_type;
    }

    public String getSku_id() {
        return sku_id;
    }

    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }

    public String getSku_properties_name() {
        return sku_properties_name;
    }

    public void setSku_properties_name(String sku_properties_name) {
        this.sku_properties_name = sku_properties_name;
    }

    public String getSnapshot_url() {
        return snapshot_url;
    }

    public void setSnapshot_url(String snapshot_url) {
        this.snapshot_url = snapshot_url;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(String total_fee) {
        this.total_fee = total_fee;
    }

    public static class ShipInfoBeanX {
        private List<ShipInfoBean> ship_info;

        public List<ShipInfoBean> getShip_info() {
            return ship_info;
        }

        public void setShip_info(List<ShipInfoBean> ship_info) {
            this.ship_info = ship_info;
        }

        public static class ShipInfoBean {
            /**
             * transport_type : express
             */

            private String transport_type;

            public String getTransport_type() {
                return transport_type;
            }

            public void setTransport_type(String transport_type) {
                this.transport_type = transport_type;
            }
        }
    }
}
