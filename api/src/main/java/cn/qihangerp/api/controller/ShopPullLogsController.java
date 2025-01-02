package cn.qihangerp.api.controller;

import cn.qihangerp.common.common.BaseController;
import cn.qihangerp.common.common.PageQuery;
import cn.qihangerp.common.common.TableDataInfo;
import cn.qihangerp.api.domain.SysShopPullLogs;
import cn.qihangerp.api.service.SysShopPullLogsService;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@AllArgsConstructor
@RestController
@RequestMapping("/shop")
public class ShopPullLogsController extends BaseController {
    private final SysShopPullLogsService pullLogsService;

    @GetMapping("/pull_logs_list")
    public TableDataInfo list(SysShopPullLogs logs, PageQuery pageQuery)
    {
        var pageList = pullLogsService.queryPageList(logs,pageQuery);
        return getDataTable(pageList);
    }
}
