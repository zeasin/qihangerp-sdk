package com.qihang.auth.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qihang.auth.domain.ScmSeller;
import com.qihang.auth.service.ScmSellerService;
import com.qihang.auth.mapper.ScmSellerMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author Administrator
* @description 针对表【scm_seller(渠道终端表)】的数据库操作Service实现
* @createDate 2024-10-22 17:46:13
*/
@AllArgsConstructor
@Service
public class ScmSellerServiceImpl extends ServiceImpl<ScmSellerMapper, ScmSeller>
    implements ScmSellerService{
    private final ScmSellerMapper scmSellerMapper;

    @Override
    public List<ScmSeller> getSellerListByUserId(Long userId) {
        List<ScmSeller> scmSellers = scmSellerMapper.selectList(new LambdaQueryWrapper<ScmSeller>().eq(ScmSeller::getManagerUserId, userId).eq(ScmSeller::getDisable, 0));
        return scmSellers;
    }
}




