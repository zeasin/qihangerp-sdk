package cn.qihangerp.open.tao.service;


import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;
import org.springframework.web.service.annotation.PostExchange;

@HttpExchange
public interface TaoWaybillApiService {

    @GetExchange("")
    String getWaybillList();

    @PostExchange("")
    String waybillCloudPrintApplyNewRequest();
}
