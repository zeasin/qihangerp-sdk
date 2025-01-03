package cn.qihangerp.open.kwai.service;


import com.alibaba.fastjson2.JSONObject;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

import java.util.Map;

@HttpExchange
public interface KwaiRefundApiService {

    @GetExchange("/open/seller/order/refund/pcursor/list")
    JSONObject getRefundList(@RequestParam(name = "params") Map<String,String> params);
//    @GetExchange()
//    String getOrderDetail();
}
