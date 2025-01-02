package cn.qihangerp.common.http;

import okhttp3.*;

import java.io.IOException;
import java.util.Map;

/**
 * @program: zinBaaS
 * @description
 * @author: qi
 * @create: 2024-08-28 15:20
 **/
public class OkHttpClientHelper {
    private static final OkHttpClient client = new OkHttpClient(); // 单例 OkHttpClient 实例

    // 执行 GET 请求
    public static String get(String url) throws IOException {
        Request request = new Request.Builder().url(url).build();
        try (Response response = client.newCall(request).execute()) {
            if (!response.isSuccessful()) throw new IOException("Unexpected code " + response);
            return response.body().string();
        }
    }

    // 执行 POST 请求
    public static String post(String url, String json) throws IOException {
        RequestBody body = RequestBody.create(MediaType.get("application/json; charset=utf-8"), json);
        Request request = new Request.Builder().url(url).post(body).build();
        try (Response response = client.newCall(request).execute()) {
            if (!response.isSuccessful()) throw new IOException("Unexpected code " + response);
            return response.body().string();
        }
    }


//    /**
//    * @Description: 实名认证post
//    * @Param: [appCode, url, params]
//    * @return: java.lang.String
//    * @Author: qi
//    * @Date: 2024/9/11 10:38
//    */
//    public static String postForm(String appCode, String url, Map<String, String> params) throws IOException {
//        OkHttpClient client = new OkHttpClient.Builder().build();
//        FormBody.Builder formbuilder = new FormBody.Builder();
//        Iterator<String> it = params.keySet().iterator();
//        while (it.hasNext()) {
//            String key = it.next();
//            formbuilder.add(key, params.get(key));
//        }
//        FormBody body = formbuilder.build();
//        Request request = new Request.Builder().url(url).addHeader("Authorization", "APPCODE " + appCode).post(body).build();
//        Response response = client.newCall(request).execute();
//        System.out.println("返回状态码" + response.code() + ",message:" + response.message());
//        String result = response.body().string();
//        return result;
//    }

    /**
     * 发送 POST 请求并返回响应结果
     *
     * @param url      请求的 URL
     * @param params   表单参数
     * @param headers  HTTP 请求头
     * @return 响应结果
     * @throws IOException
     */
    public static String postForm(String url, Map<String, String> params, Map<String, String> headers) throws IOException {
        OkHttpClient client = new OkHttpClient.Builder().build();
        FormBody.Builder formBuilder = new FormBody.Builder();

        // 添加表单参数
        for (Map.Entry<String, String> entry : params.entrySet()) {
            formBuilder.add(entry.getKey(), entry.getValue());
        }

        FormBody body = formBuilder.build();

        Request.Builder requestBuilder = new Request.Builder().url(url).post(body);

        // 添加 HTTP 请求头
        for (Map.Entry<String, String> header : headers.entrySet()) {
            requestBuilder.addHeader(header.getKey(), header.getValue());
        }

        Request request = requestBuilder.build();
        try (Response response = client.newCall(request).execute()) {
            System.out.println("返回状态码: " + response.code() + ", message: " + response.message());
            return response.body().string();
        }
    }
}
