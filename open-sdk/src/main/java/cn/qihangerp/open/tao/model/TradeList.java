package cn.qihangerp.open.tao.model;

import java.util.List;

public class TradeList {

    /**
     * adjust_fee : 0.00
     * alipay_no : 2024040122001130781434540875
     * buyer_nick : f**
     * buyer_open_uid : AAHwHVMUAAJ_dKyzaDWzAvEP
     * created : 2024-04-01 18:44:26
     * credit_card_fee : 2491.02
     * discount_fee : 2000.00
     * end_time : 2024-04-01 20:10:29
     * has_buyer_message : false
     * has_yfx : false
     * modified : 2024-04-01 20:10:28
     * no_shipping : false
     * oaid : 1p4nZ8Ap4ZNnnUplibDEoUb3kh1CIBqJtMXfD8Ba8V1o8vUaOicVZOp58nTVJQ6y309zTj1h
     * orders : {"order":[{"adjust_fee":"0.00","buyer_rate":false,"cid":50020633,"discount_fee":"500.00","divide_order_fee":"2499.00","end_time":"2024-04-01 20:10:29","is_daixiao":false,"is_idle":"0","num":1,"num_iid":739001644954,"oid":"2105811697800953286","outer_sku_id":"F3-HGHT-23E-WQM-C1","part_mjz_discount":"2000.00","payment":"0.00","pic_path":"https://img.alicdn.com/bao/uploaded/i3/351855490/O1CN013dsX9u1qQTHOwFodp_!!351855490.jpg","price":"4999.00","refund_id":"150231974221958632","refund_status":"SUCCESS","seller_rate":false,"seller_type":"B","sku_id":"5275960415307","sku_properties_name":"颜色分类:奶油白：1人位（生态皮）","status":"TRADE_CLOSED","title":"曲美家居北欧风头层牛皮弯曲木客厅阳台单人沙发懒人沙发椅帆船","total_fee":"4499.00"}]}
     * pay_time : 2024-04-01 18:44:33
     * payment : 2499.00
     * post_fee : 0.00
     * received_payment : 0.00
     * receiver_address : 长**街道祥源西康***大门**路**号***室
     * receiver_city : 上海市
     * receiver_district : 普陀区
     * receiver_mobile : *******8650
     * receiver_name : 大**
     * receiver_state : 上海
     * receiver_town : 长寿路街道
     * seller_flag : 0
     * sid : 2105811697799953286
     * status : TRADE_CLOSED
     * tid : 2105811697799953286
     * title : 曲美家具官方旗舰店
     * total_fee : 4999.00
     * type : fixed
     */

    private String adjust_fee;
    private String alipay_no;
    private String buyer_nick;
    private String buyer_open_uid;
    private String created;
    private String credit_card_fee;
    private String discount_fee;
    private String end_time;
    private boolean has_buyer_message;
    private boolean has_yfx;
    private String modified;
    private boolean no_shipping;
    private String oaid;
    private List<TradeItem> orders;
    private String pay_time;
    private String payment;
    private String post_fee;
    private String received_payment;
    private String receiver_address;
    private String receiver_city;
    private String receiver_district;
    private String receiver_mobile;
    private String receiver_name;
    private String receiver_state;
    private String receiver_town;
    private int seller_flag;
    private String sid;
    private String status;
    private String tid;
    private String title;
    private String total_fee;
    private String type;

    public String getAdjust_fee() {
        return adjust_fee;
    }

    public void setAdjust_fee(String adjust_fee) {
        this.adjust_fee = adjust_fee;
    }

    public String getAlipay_no() {
        return alipay_no;
    }

    public void setAlipay_no(String alipay_no) {
        this.alipay_no = alipay_no;
    }

    public String getBuyer_nick() {
        return buyer_nick;
    }

    public void setBuyer_nick(String buyer_nick) {
        this.buyer_nick = buyer_nick;
    }

    public String getBuyer_open_uid() {
        return buyer_open_uid;
    }

    public void setBuyer_open_uid(String buyer_open_uid) {
        this.buyer_open_uid = buyer_open_uid;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getCredit_card_fee() {
        return credit_card_fee;
    }

    public void setCredit_card_fee(String credit_card_fee) {
        this.credit_card_fee = credit_card_fee;
    }

    public String getDiscount_fee() {
        return discount_fee;
    }

    public void setDiscount_fee(String discount_fee) {
        this.discount_fee = discount_fee;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public boolean isHas_buyer_message() {
        return has_buyer_message;
    }

    public void setHas_buyer_message(boolean has_buyer_message) {
        this.has_buyer_message = has_buyer_message;
    }

    public boolean isHas_yfx() {
        return has_yfx;
    }

    public void setHas_yfx(boolean has_yfx) {
        this.has_yfx = has_yfx;
    }

    public String getModified() {
        return modified;
    }

    public void setModified(String modified) {
        this.modified = modified;
    }

    public boolean isNo_shipping() {
        return no_shipping;
    }

    public void setNo_shipping(boolean no_shipping) {
        this.no_shipping = no_shipping;
    }

    public String getOaid() {
        return oaid;
    }

    public void setOaid(String oaid) {
        this.oaid = oaid;
    }

    public List<TradeItem> getOrders() {
        return orders;
    }

    public void setOrders(List<TradeItem> orders) {
        this.orders = orders;
    }

    public String getPay_time() {
        return pay_time;
    }

    public void setPay_time(String pay_time) {
        this.pay_time = pay_time;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getPost_fee() {
        return post_fee;
    }

    public void setPost_fee(String post_fee) {
        this.post_fee = post_fee;
    }

    public String getReceived_payment() {
        return received_payment;
    }

    public void setReceived_payment(String received_payment) {
        this.received_payment = received_payment;
    }

    public String getReceiver_address() {
        return receiver_address;
    }

    public void setReceiver_address(String receiver_address) {
        this.receiver_address = receiver_address;
    }

    public String getReceiver_city() {
        return receiver_city;
    }

    public void setReceiver_city(String receiver_city) {
        this.receiver_city = receiver_city;
    }

    public String getReceiver_district() {
        return receiver_district;
    }

    public void setReceiver_district(String receiver_district) {
        this.receiver_district = receiver_district;
    }

    public String getReceiver_mobile() {
        return receiver_mobile;
    }

    public void setReceiver_mobile(String receiver_mobile) {
        this.receiver_mobile = receiver_mobile;
    }

    public String getReceiver_name() {
        return receiver_name;
    }

    public void setReceiver_name(String receiver_name) {
        this.receiver_name = receiver_name;
    }

    public String getReceiver_state() {
        return receiver_state;
    }

    public void setReceiver_state(String receiver_state) {
        this.receiver_state = receiver_state;
    }

    public String getReceiver_town() {
        return receiver_town;
    }

    public void setReceiver_town(String receiver_town) {
        this.receiver_town = receiver_town;
    }

    public int getSeller_flag() {
        return seller_flag;
    }

    public void setSeller_flag(int seller_flag) {
        this.seller_flag = seller_flag;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
