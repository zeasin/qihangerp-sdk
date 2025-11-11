package cn.qihangerp.open.kwai;

import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.kwai.model.KwaiGoodsItem;
import com.alibaba.fastjson2.JSONObject;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;
class KwaiGoodsApiHelperTest {

    @org.junit.jupiter.api.Test
    void pullGoodsAll() {
        try {
            String appKey = "ks700872692254768517";
            String appSecret = "7Bmb4KSuo3SB9sX7JNUETQ";
            String signSecret = "b690afccbefc07697782cad097e51e40";
            String token = "ChFvYXV0aC5hY2Nlc3NUb2tlbhJAEZN0T9CpVhcixWeOK0LvgZfGbBXIxTnM9gxUzRa8KZbtn-IDlxNmLbj9C0DTMJw5oKZ9myvDWCaPhuviDJghXRoSj7CN238WSuq-kBNyCQnaCfBmIiClKfC1257w4i6kA7dxZfxz8XR3Aiwxd-8VZH9ioydPICgFMAE";

            ApiResultVo<KwaiGoodsItem> kwaiGoodsItemApiResultVo = KwaiGoodsApiHelper.pullGoodsAll(appKey,appSecret,signSecret,token);
            System.out.println(JSONObject.toJSONString(kwaiGoodsItemApiResultVo));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}