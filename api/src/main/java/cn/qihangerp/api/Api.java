package cn.qihangerp.api;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@MapperScan("cn.qihangerp.api.mapper")
@ComponentScan(basePackages={"cn.qihangerp"})
@SpringBootApplication
public class Api {
    public static void main( String[] args )
    {
        System.out.println( "Hello api!" );
        SpringApplication.run(Api.class, args);
    }

}
