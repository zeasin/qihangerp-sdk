# 启航电商ERP电商开放平台SDK-专为简化电商系统开发而生

## 一、项目概述

启航电商ERP开放平台SDK-为简化电商ERP系统开发而生，集合了各电商开放平台API接口开，已经支持的开放平台包括：淘宝天猫、京东POP、京东自营、拼多多、抖店、微信小店等。

SDK支持输出各平台原生字段数据和封装之后的标准字段数据，可自行选择使用。使用SDK开发可以让您专注自己的业务，复杂繁琐的数据交给SDK就可以了，极大节省开发者系统开发时间。


**获取授权请联系作者**


## 二、API
**本项目已经实现了部分API，更多API开发中**


### 项目结构
####  api
**已实现的API**，直接调用接口即可使用。


#### core
SDK核心包


## 三、如何使用？
### 3.1、开发环境配置
+ MySQL数据库创建
  + 运行MySQL脚本`docs\sql\qihangerp-scm.sql`导入数据到主库`qihangerp-scm`

+ 启动nacos
  + 启动
  
    **一般情况下：下载nacos2.3.2解压之后直接运行：**
  
    `startup.cmd -m standalone`
 
  + 添加Nacos配置
    + 项目dataId`qihangerp-scm.yaml`（配置内容从docs\qihangerp-scm.yaml复制即可）

+ 启动Redis


  
### 3.2、启动后端

+ 启动`service`下面的所有微服务
+ 启动`api-scm`项目
+ 启动`api-dcm`项目

### 3.3、启动前端 `vue-scm`、`vue-dcm`
+ `npm install`
+ `npm run dev`
+ 打包`npm run build:prod`
+ 访问web
  + 访问地址：`http://localhost`
  + 登录名：`admin`
  + 登录密码：`admin123`





## 四、期待您的支持

**感谢大家的关注与支持！希望利用本人从事电商10余年的经验帮助到大家提升工作效率！**

💖 如果觉得有用记得点 Star⭐

### 4.1 加入知识星球
💖 欢迎加入知识星期获得作者帮助和朋友们一起交流！

<img src="docs/知识星球.jpg" width="300px" />


### 4.2 关注公众号

更多服务，请关注作者微信公众号：qihangerp168

<img src="docs/微信公众号.jpg" width="300px" />


### 4.3 捐助项目
作者为兼职做开源,平时还需要工作,如果帮到了您可以请作者吃个盒饭

<img src="docs/微信收款码.jpg" width="300px" />
<img src="docs/支付宝收款码.jpg" width="300px" />





