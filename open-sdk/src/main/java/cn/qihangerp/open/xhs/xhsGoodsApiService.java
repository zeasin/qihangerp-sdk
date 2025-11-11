package cn.qihangerp.open.xhs;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.xhs.response.GoodsItemInfo;
import cn.qihangerp.open.xhs.response.GoodsItemSku;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@Slf4j
@Component
public class xhsGoodsApiService {

    public ApiResultVo<GoodsItemInfo> pullGoodsItemList(String appId,String appSecret, String accessToken) throws IOException {
        List<GoodsItemInfo> productList = new ArrayList<>();
        Integer pageIndex = 1;
        Integer pageSize = 30;
        Integer total = 0;
        String listResult = xhsGoodsApiHelper.pullGoodsItemList(appId,appSecret,accessToken, pageIndex, pageSize);
        if(StringUtils.hasText(listResult)){
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if(jsonObject.getBoolean("success")) {
                log.info("==========获取小红书商品LIST成功=============");
                JSONObject data = jsonObject.getJSONObject("data");
                total = data.getInteger("total");

                JSONArray dataList = data.getJSONArray("itemDetailV3s");
                if (dataList != null && dataList.size() > 0) {
                    for (int i = 0; i < dataList.size(); i++) {
                        GoodsItemInfo itemInfo = dataList.getObject(i, GoodsItemInfo.class);
                        log.info("=======组装小红书商品===========");
                        String itemResult = xhsGoodsApiHelper.pullGoodsItemInfo(appId,appSecret,accessToken,itemInfo.getId());
                        JSONObject itemResultObj = JSONObject.parseObject(itemResult);
                        if(itemResultObj.getInteger("error_code") == 0) {

                            itemInfo = itemResultObj.getJSONObject("data").getObject("itemInfo", GoodsItemInfo.class);
                            List<GoodsItemSku> skuList = itemResultObj.getJSONObject("data").getList("skuInfos", GoodsItemSku.class);
                            itemInfo.setSkus(skuList);
                            productList.add(itemInfo);
                            log.info("=======组装小红书商品ITEM===========");
                        }else{
                            return ApiResultVo.error(itemResultObj.getString("error_msg"));
                        }

                    }

                }
            }
            else {
                return ApiResultVo.error(jsonObject.getString("error_msg"));
            }
        }else{
            return ApiResultVo.error("获取商品list失败");
        }
        return ApiResultVo.success(total, productList);
    }

    /**
     *
     * 商品详情
     * @param appId
     * @param appSecret
     * @param accessToken
     * @return
     * @throws IOException
     */
    public ApiResultVo<GoodsItemInfo> getGoodsItemInfo(String appId,String appSecret,String accessToken, String itemId) throws IOException {
        GoodsItemInfo itemInfo = new GoodsItemInfo();

        String itemResult = xhsGoodsApiHelper.pullGoodsItemInfo(appId,appSecret,accessToken,itemId);
        JSONObject itemResultObj = JSONObject.parseObject(itemResult);

        if(itemResultObj.getInteger("error_code") == 0) {

            itemInfo = itemResultObj.getJSONObject("data").getObject("itemInfo", GoodsItemInfo.class);

            List<GoodsItemSku> skuList = itemResultObj.getJSONObject("data").getList("skuInfos", GoodsItemSku.class);
            itemInfo.setSkus(skuList);

            log.info("=======组装小红书商品ITEM===========");
            return ApiResultVo.success(itemInfo);
        }else{
            return ApiResultVo.error(itemResultObj.getString("error_msg"));
        }
    }
}
