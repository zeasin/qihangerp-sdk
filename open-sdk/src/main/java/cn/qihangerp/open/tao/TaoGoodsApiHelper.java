package cn.qihangerp.open.tao;



import cn.qihangerp.open.common.*;
import cn.qihangerp.open.tao.model.GoodsItem;
import cn.qihangerp.open.tao.model.GoodsItemSku;
import cn.qihangerp.open.tao.service.TaoGoodsApiService;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.time.LocalDateTime;
import java.util.*;

public class TaoGoodsApiHelper {
    private static Logger log = LoggerFactory.getLogger(TaoGoodsApiHelper.class);
    private static final String LIST_FIELDS = "approve_status,num_iid,title,nick,type,cid,pic_url,num,props,props_name,valid_thru,list_time,price,has_discount,has_invoice,has_warranty," +
            "has_showcase,modified,delist_time,postage_id,seller_cids,outer_id,sold_quantity,skus";
    private static final String SKU_FIELDS = "sku_id,iid,num_iid,properties,properties_name,quantity,price,outer_id,created,modified,status,sku_spec_id,barcode";

    public static ApiResultVo<GoodsItem> pullGoodsList(String appKey, String appSecret, String sessionKey) {
        log.info("=======开始全量拉取商品数据{}=========", LocalDateTime.now());
        Integer pageNo = 1;
        String resultString = pullGoodsList(pageNo, appKey, appSecret, sessionKey);
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("items_onsale_get_response");
            int totalResults = (Integer) dataResult.get("total_results");
            // 计算总页数
            int totalPage = (totalResults % 40 == 0)
                    ? totalResults / 40
                    : (totalResults / 40) + 1;

            JSONObject itemListResult = (JSONObject) dataResult.get("items");
            //组合的订单列表
            List<GoodsItem> goodsItemList = new ArrayList<>();

            if (itemListResult != null) {
                for (Object item : (JSONArray) itemListResult.get("item")) {
                    GoodsItem bean = JSONObject.parseObject(item.toString(), GoodsItem.class);
                    // 查询sku list
                    ApiResultVo<GoodsItemSku> goodsItemSkuApiResultVo = pullSku(bean.getNum_iid(), appKey, appSecret, sessionKey);
                    if (goodsItemSkuApiResultVo.getCode() == ApiResultVoEnum.SUCCESS.getIndex()) {
                        bean.setSkuList(goodsItemSkuApiResultVo.getList());
                    }
                    goodsItemList.add(bean);
                }
                if (totalPage > 1) {
                    //循环取下一页
                    while (pageNo <= totalPage) {
                        pageNo++;
                        String resultString1 = pullGoodsList(pageNo, appKey, appSecret, sessionKey);
                        JSONObject result1 = JSONObject.parseObject(resultString1);
                        //没有错误
                        JSONObject dataResult1 = (JSONObject) result1.get("items_onsale_get_response");

                        JSONObject orderListResult1 = (JSONObject) dataResult1.get("items");
                        if (orderListResult1 != null) {
                            for (Object item : (JSONArray) orderListResult1.get("item")) {
                                GoodsItem bean = JSONObject.parseObject(item.toString(), GoodsItem.class);
                                // 查询sku list
                                ApiResultVo<GoodsItemSku> goodsItemSkuApiResultVo = pullSku(bean.getNum_iid(), appKey, appSecret, sessionKey);
                                if (goodsItemSkuApiResultVo.getCode() == ApiResultVoEnum.SUCCESS.getIndex()) {
                                    bean.setSkuList(goodsItemSkuApiResultVo.getList());
                                }
                                goodsItemList.add(bean);
                            }
                        }
                    }
                }
//                return new PullResult(tradeBeans.size(), tradeBeans);
                return ApiResultVo.success(goodsItemList.size(), goodsItemList);
            } else {
//                return new PullResult(0, tradeBeans);
                return ApiResultVo.success(0, goodsItemList);
            }

        } else {
            // 有错误
            JSONObject errorInfo = (JSONObject) result.get("error_response");
            if (errorInfo.get("code").toString().equals("27")) {
                // SessionKey非法
                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(), errorInfo.get("sub_msg").toString());
            } else if (errorInfo.get("code").toString().equals("25")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名错误，有可能是appSecret错了");
            } else if (errorInfo.get("code").toString().equals("29")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "错误的AppKey");
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("sub_msg").toString());
            }
        }
    }

    protected static String pullGoodsList(Integer pageNo, String appKey, String appSecret, String sessionKey) {
        String url = "https://api.taobao.com/router/rest"; // 淘宝API的URL
        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", "taobao.items.onsale.get");
        params.put("v", "2.0");
        params.put("session", sessionKey);
        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("format", "json");
        params.put("sign_method", "md5");

        params.put("page_no", pageNo.toString());
        params.put("fields", LIST_FIELDS);
        params.put("page_size", "40");
        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return "";//签名错误
        }
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> joiner.add(key + "=" + value));
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
        TaoGoodsApiService remoting = RemoteUtil.Remoting(url, TaoGoodsApiService.class);
        String result = remoting.getGoodsList();
        return result;
    }

    protected static ApiResultVo<GoodsItemSku> pullSku(Long numIid, String appKey, String appSecret, String sessionKey) {
        String url = "https://api.taobao.com/router/rest"; // 淘宝API的URL

        Map<String, String> params = new HashMap<>();
        params.put("app_key", appKey);
        params.put("method", "taobao.item.skus.get");
        params.put("v", "2.0");
        params.put("session", sessionKey);
        params.put("timestamp", DateUtil.getCurrentDateTime());
        params.put("format", "json");
        params.put("sign_method", "md5");

        params.put("fields", SKU_FIELDS);
        params.put("num_iids", numIid.toString());
        try {
            String sign = SignUtil.signTopRequest(params, appSecret);
            params.put("sign", sign);
        } catch (Exception e) {
            return ApiResultVo.error(ApiResultVoEnum.SIGN_ERROR.getIndex(), "签名错误");//签名错误
        }
        // 组合url参数
        StringJoiner joiner = new StringJoiner("&");
        params.forEach((key, value) -> joiner.add(key + "=" + value));
        String urlP = joiner.toString();
        url = url + "?" + urlP;

        // 调用接口
        TaoGoodsApiService remoting = RemoteUtil.Remoting(url, TaoGoodsApiService.class);
        String resultString = remoting.getGoodsList();
        if (!StringUtils.hasText(resultString))
            return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名发生错误");

        // 获取结果
        JSONObject result = JSONObject.parseObject(resultString);
        if (result.get("error_response") == null) {
            //没有错误
            JSONObject dataResult = (JSONObject) result.get("item_skus_get_response");
            JSONObject itemListResult = (JSONObject) dataResult.get("skus");
            //组合的订单列表
            List<GoodsItemSku> skuList = new ArrayList<>();

            if (itemListResult != null) {
                if (itemListResult.get("sku") != null) {
                    skuList = JSONArray.parseArray(itemListResult.get("sku").toString(), GoodsItemSku.class);
                }
//                for (Object item : (JSONArray) itemListResult.get("sku")) {
//                    GoodsItemSku bean = JSONObject.parseObject(item.toString(), GoodsItemSku.class);
//                    // 查询sku list
//                    skuList.add(bean);
//                }
                return ApiResultVo.success(skuList.size(), skuList);
            } else {
//                return new PullResult(0, tradeBeans);
                return ApiResultVo.success(0, new ArrayList<>());
            }
        } else {
            // 有错误
            JSONObject errorInfo = (JSONObject) result.get("error_response");
            if (errorInfo.get("code").toString().equals("27")) {
                // SessionKey非法
                return ApiResultVo.error(ApiResultVoEnum.TokenFail.getIndex(), errorInfo.get("sub_msg").toString());
            } else if (errorInfo.get("code").toString().equals("25")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "签名错误，有可能是appSecret错了");
            } else if (errorInfo.get("code").toString().equals("29")) {
                return ApiResultVo.error(ApiResultVoEnum.SystemException.getIndex(), "错误的AppKey");
            } else {
                return ApiResultVo.error(ApiResultVoEnum.ParamsError.getIndex(), errorInfo.get("sub_msg").toString());
            }
        }
    }

}