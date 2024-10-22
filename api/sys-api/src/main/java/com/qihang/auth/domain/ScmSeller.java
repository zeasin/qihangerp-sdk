package com.qihang.auth.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 渠道终端表
 * @TableName scm_seller
 */
@TableName(value ="scm_seller")
@Data
public class ScmSeller implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 渠道名称
     */
    private String name;

    /**
     * 渠道编码
     */
    private String number;

    /**
     * 备注
     */
    private String remark;

    /**
     * 职位
     */
    private String place;

    /**
     * 联系人
     */
    private String linkMan;

    /**
     * 联系方式
     */
    private String contact;

    /**
     * 省
     */
    private String province;

    /**
     * 市
     */
    private String city;

    /**
     * 区县
     */
    private String county;

    /**
     * 收货地址详情
     */
    private String address;

    /**
     * 
     */
    private String pinYin;

    /**
     * 0启用   1禁用
     */
    private Integer disable;

    /**
     * 管理员账号
     */
    private Long managerUserId;

    /**
     * 创建时间
     */
    private Date createTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}