package cn.qihangerp.open.pdd.service;


import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.service.annotation.HttpExchange;
import org.springframework.web.service.annotation.PostExchange;

@HttpExchange
public interface PddOrderApiService {

    @PostExchange("")
    String getOrderList(@RequestBody String jsonString);
    @PostExchange
    String getOrderDetail(@RequestBody String jsonString);
}
