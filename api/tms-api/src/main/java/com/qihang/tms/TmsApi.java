package com.qihang.tms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Hello world!
 *
 */
@ComponentScan(basePackages={"com.qihang"})
@SpringBootApplication
public class TmsApi
{
    public static void main( String[] args )
    {
        System.out.println( "Hello wms-api!" );
        SpringApplication.run(TmsApi.class, args);
    }
}
