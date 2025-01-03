package cn.qihangerp.open.jd;

public class JdTokenApiHelper {
    /**
     * 1）拼接授权url
     *     拼接用户授权需访问url ，示例及参数说明如下：
     * https://open-oauth.jd.com/oauth2/to_login?app_key=XXXXX&response_type=code&redirect_uri=XXXXX&state=20180416&scope=snsapi_base
     * 2) 访问url--授权登录--返回code
     * 3） redirect_uri?code=CODE&state=STATE
     * 4）通过code获取access_token
     *     将code拼接为以下URL：
     *
     * https://open-oauth.jd.com/oauth2/access_token?app_key=XXXXX&app_secret=XXXXX&grant_type=authorization_code&code=XXXXX
     */
}
