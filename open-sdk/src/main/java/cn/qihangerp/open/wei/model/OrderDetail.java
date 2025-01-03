package cn.qihangerp.open.wei.model;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import lombok.Data;

import java.util.List;

@Data
public class OrderDetail {
    private List<OrderDetailProduct> product_infos;

    private JSONObject price_info;//	价格信息
    private JSONObject pay_info;//	支付信息
    private OrderDetailDeliveryInfo delivery_info;//	配送信息
    private JSONObject coupon_info;//	优惠券信息
    private JSONObject ext_info;//	额外信息
    private JSONArray commission_infos;//	分佣信息
    private JSONObject settle_info;//	结算信息
}
