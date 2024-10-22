package com.qihang.auth.service;

import com.qihang.auth.domain.ScmSeller;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
* @author Administrator
* @description 针对表【scm_seller(渠道终端表)】的数据库操作Service
* @createDate 2024-10-22 17:46:13
*/
public interface ScmSellerService extends IService<ScmSeller> {
    List<ScmSeller> getSellerListByUserId(Long userId);
}
