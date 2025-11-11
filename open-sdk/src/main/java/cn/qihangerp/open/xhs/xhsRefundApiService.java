package cn.qihangerp.open.xhs;


import cn.qihangerp.open.common.ApiResultVo;
import cn.qihangerp.open.common.ApiResultVoEnum;
import cn.qihangerp.open.xhs.response.AfterSaleInfoResponse;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Component
public class xhsRefundApiService {

    public ApiResultVo<AfterSaleInfoResponse> pullRefundList(String appId, String appSecret, String accessToken, LocalDateTime startTime, LocalDateTime  endTime) throws IOException {
        List<AfterSaleInfoResponse> productList = new ArrayList<>();
        Integer pageIndex = 1;
        Integer pageSize = 30;
        Integer total = 0;
        String listResult = xhsRefundApiHelper.pullRefundList(appId,appSecret,accessToken,startTime,endTime, pageIndex, pageSize);
        if(StringUtils.hasText(listResult)){
            JSONObject jsonObject = JSONObject.parseObject(listResult);
            if(jsonObject.getBoolean("success")) {
                log.info("==========获取小红书订单LIST成功=============");
                JSONObject data = jsonObject.getJSONObject("data");
                total = data.getInteger("totalCount");
                JSONArray dataList = data.getJSONArray("afterSaleBasicInfos");
                if (dataList != null && dataList.size() > 0) {
                    for (int i = 0; i < dataList.size(); i++) {
                        AfterSaleInfoResponse refund = dataList.getObject(i, AfterSaleInfoResponse.class);
                        log.info("=======组装小红书售后===========");

                        String detailResult = xhsRefundApiHelper.getRefundDetail(appId,appSecret,accessToken,refund.getReturnsId());
                        JSONObject detailResultObj = JSONObject.parseObject(detailResult);
                        if(detailResultObj.getBoolean("success")) {
                            refund = detailResultObj.getJSONObject("data").getObject("afterSaleInfo", AfterSaleInfoResponse.class);
                            String orderDetail = xhsOrderApiHelper.getOrderDetail(appId,appSecret,accessToken,refund.getOrderId());
                            Integer orderStatus = JSONObject.parseObject(orderDetail).getJSONObject("data").getInteger("orderStatus");
                            refund.setOrderStatus(orderStatus);
                            productList.add(refund);
                        }else{
                            return ApiResultVo.error(detailResultObj.getString("error_msg"));
                        }



                    }

                }
            } else {
                if(jsonObject.getInteger("error_code") == 401) {
                    return ApiResultVo.error( ApiResultVoEnum.TokenFail.getIndex(), jsonObject.getString("error_msg"));
                }else return ApiResultVo.error(jsonObject.getString("error_msg"));
            }
        }else{
            return ApiResultVo.error("请求接口失败");
        }

        return ApiResultVo.success(total, productList);
    }

}
