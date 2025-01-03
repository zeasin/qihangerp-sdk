package cn.qihangerp.open.tao.service;


import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

@HttpExchange
public interface TaoRefundApiService {

    @GetExchange("")
    String getRefundList();
    @GetExchange
    String getRefundDetail();
}
