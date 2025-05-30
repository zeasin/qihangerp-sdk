//package cn.qihangerp.open.common;
//
//import org.springframework.web.reactive.function.client.WebClient;
//import org.springframework.web.reactive.function.client.support.WebClientAdapter;
//import org.springframework.web.service.invoker.HttpServiceProxyFactory;
//
//public class RemoteUtil {
//
//    /**
//     * 远程调用方法 模板代码
//     * @param url 调用的地址
//     * @param serviceType 返回的类型
//     */
//    public static <S> S Remoting(String url, Class<S> serviceType){
//        WebClient client = WebClient.builder()
//                .defaultHeader("Content-type","application/x-www-form-urlencoded")
//                .defaultHeader("Accept","application/json;charset=UTF-8")
//                .baseUrl(url).build();
//        HttpServiceProxyFactory factory = HttpServiceProxyFactory.builder(WebClientAdapter.forClient(client)).build();
//        return factory.createClient(serviceType);
//    }
//}
