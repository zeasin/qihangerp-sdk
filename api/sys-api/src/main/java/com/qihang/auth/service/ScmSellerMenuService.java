package com.qihang.auth.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qihang.auth.domain.ScmSellerMenu;
import com.qihang.auth.domain.SysMenu;
import com.qihang.security.vo.RouterVo;

import java.util.List;

/**
* @author Administrator
* @description 针对表【scm_seller_menu(scm销售终端菜单表)】的数据库操作Service
* @createDate 2024-10-22 18:23:58
*/
public interface ScmSellerMenuService extends IService<ScmSellerMenu> {
    List<ScmSellerMenu> selectMenuTree();
    List<RouterVo> buildMenus(List<ScmSellerMenu> menus);
}
