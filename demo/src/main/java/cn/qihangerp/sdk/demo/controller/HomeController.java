package cn.qihangerp.sdk.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class HomeController {

    @GetMapping("/")
    public String home(){
        return "{'code':0,'msg':'请通过api访问'}";
    }


}
