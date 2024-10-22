package com.qihang.auth.controller;

import com.qihang.auth.domain.LoginBody;
import com.qihang.auth.domain.ScmSeller;
import com.qihang.auth.domain.ScmSellerMenu;
import com.qihang.auth.domain.SysMenu;
import com.qihang.auth.service.ScmSellerMenuService;
import com.qihang.auth.service.ScmSellerService;
import com.qihang.auth.service.SysMenuService;
import com.qihang.auth.service.SysPermissionService;
import com.qihang.common.common.AjaxResult;
import com.qihang.common.config.RedisCache;
import com.qihang.common.constant.Constants;
import com.qihang.security.LoginUser;
import com.qihang.security.common.SecurityUtils;
import com.qihang.security.entity.SysUser;
import com.qihang.security.service.SysLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * 登录验证
 * 
 * @author qihang
 */
@RestController
public class SellerLoginController
{
    @Autowired
    private SysLoginService loginService;

    @Autowired
    private SysMenuService menuService;

    @Autowired
    private SysPermissionService permissionService;
    @Autowired
    private ScmSellerMenuService sellerMenuService;

    @Autowired
    private ScmSellerService sellerService;
    @Value("${token.expireTime:30}")
    private int expireTime;

    protected static final long MILLIS_SECOND = 1000;

    protected static final long MILLIS_MINUTE = 60 * MILLIS_SECOND;


    @Autowired
    private RedisCache redisCache;
    /**
     * 登录方法
     * 
     * @param loginBody 登录信息
     * @return 结果
     */
    @PostMapping("/seller/login")
    public AjaxResult login(@RequestBody LoginBody loginBody)
    {
        try {
            AjaxResult ajax = AjaxResult.success();
            // 生成令牌
            LoginUser loginUser = loginService.login(loginBody.getUsername(), loginBody.getPassword());
            ajax.put(Constants.TOKEN, loginUser.getTokenValue());
            List<ScmSeller> sellerList = sellerService.getSellerListByUserId(loginUser.getUserId());
            if(sellerList == null || sellerList.isEmpty()){
                redisCache.deleteObject(loginUser.getToken());
                return AjaxResult.error("用户没有权限");
            }else{
                loginUser.setSellerId(sellerList.get(0).getId());
                loginUser.setTokenValue("");
                loginUser.setExpireTime(loginUser.getLoginTime() + expireTime * MILLIS_MINUTE);
                // 根据uuid将loginUser缓存
                redisCache.setCacheObject(loginUser.getToken(), loginUser, expireTime, TimeUnit.MINUTES);
            }
//            SysUser user = SecurityUtils.getLoginUser().getUser();
            return ajax;
        }catch (Exception e){
            return AjaxResult.error(e.getMessage());
        }
    }

    /**
     * 获取用户信息
     * 
     * @return 用户信息
     */
    @GetMapping("/seller/getInfo")
    public AjaxResult getInfo()
    {
        LoginUser loginUser = redisCache.getCacheObject(SecurityUtils.getLoginUser().getToken());
        if(loginUser.getSellerId() == null){
            return AjaxResult.error(401,"用户不存在");
        }
        SysUser user = SecurityUtils.getLoginUser().getUser();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        return ajax;
    }

    /**
     * 获取路由信息
     * 
     * @return 路由信息
     */
    @GetMapping("/seller/getRouters")
    public AjaxResult getRouters()
    {
        List<ScmSellerMenu> scmSellerMenus = sellerMenuService.selectMenuTree();

//        Long userId = SecurityUtils.getUserId();
//        List<SysMenu> menus = menuService.selectMenuTreeByUserId(userId);
        return AjaxResult.success(sellerMenuService.buildMenus(scmSellerMenus));
    }
}
