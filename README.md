# 启航跨境电商ERP-OMS订单处理系统

启航跨境电商ERP-OMS订单处理系统是在启航电商ERP基础上开发而来。

**现征集参与系统测试企业，参与测试需要提供相关appkey和店铺数据用于测试，测试企业将获得终身免费使用权。**

**参与测试请联系作者qihangec168**

## 一、系统介绍

启航电商ERP-跨境电商版是集OMS订单处理、TMS物流管理等全流程跨境电商业务系统。支持多平台多店铺，包括亚马逊、tiktok、shopee等。

主体功能包括：订单管理（订单拉取、处理）、发货管理（TMS物流管理）、售后管理（补发、换货、退货处理）、商品管理、店铺管理等，基本上覆盖了跨境电商网店管理日常业务。

采用SpringCloud微服务架构开发，后续将开放接口对接其他系统。


## 二、关键流程

### 2.1 关联商品SKU
```mermaid
graph TD
    A[添加ERP商品SKU信息] -->B(拉取店铺商品)
    B --> C[店铺商品SKU关联ERP商品SKU]
    C --> E(完成)
```


### 2.2 处理订单（发货）
```mermaid
graph TD
    A[店铺订单拉取] -->B(店铺订单推送到OMS订单中心)
    B --> C(后台任务:订单商品数据自动关联ERP系统SKU)
    C --> D[接口推送/手动推送:将订单推送给ERP系统-外部系统]
    D --> E[接收/手动录入ERP系统发货单号]
    E --> F[变更OMS订单状态 - 将发货信息推送给平台店铺]
    F --> G(完成)
```


### 2.3 处理售后

```mermaid
graph TD
    A[店铺退款拉取] -->B(店铺退款推送到OMS售后中心)
    B --> D[接口推送/手动推送:将订单推送给ERP系统-外部系统]
    D --> E[接收/手动录入ERP系统处理售后结果:补发/换货/退货]
    E --> F[变更OMS售后状态 - 将售后结果信息推送给平台店铺]
    F --> G(完成)
```




## 三、软件架构
### 1、开发环境级组件
#### 1.1 开发环境
+ Jdk：17
+ Nodejs：v16.20.0

#### 1.2 项目组件
##### 后端核心组件
+ SpringBoot：3.0.2
  + spring-boot-starter-security
+ SpringCloud：2022.0.0
  + SpringCloud Gateway
  + Eureka
+ MySQL8
+ Redis：7.x


##### 前端框架及组件
+ vue2
+ element


### 2、项目结构
#### 2.1 core
项目公共模块包括：

+ `common`:公共类型

+ `security`:公共权限验证模块

#### 2.2 eureka-server

**微服务发现中心**

#### 2.3 gateway

网关项目，负责微服务接口转发，前端统一通过网关调用其他微服务接口；

采用`gateway`进行api分发，引入Sentinel进行流量治理。

#### 2.4 业务微服务
##### auth-api
系统类微服务，主要功能包括：

+ 用户
+ 菜单

##### oms-api
oms主功能微服务，主要功能包括：

+ 队列消息处理（订单消息、退款消息）
+ 订单接口
+ 退款接口
+ 店铺接口

##### open-api
各开放平台微服务
##### tms-api
tms模块微服务

##### offline-api
手动添加订单模块


### 3、运行说明
#### 3.1、启动环境

1. 启动MySQL8
2. 启动Redis7

#### 3.2、导入数据库
+ 创建数据库`qihang-erp`
  + 导入数据库结构：sql脚本`docs\qihangerp-cbce.sql`

#### 3.3、启动服务(项目)
1.  启动微服务注册中心EurekaServer
2.  启动gateway网关
3.  启动业务微服务（auth-api、oms-api、tms-api）

#### 3.4、运行前端
+ Nodejs版本：v16.20.0
+ 进入`vue`文件夹
+ 运行`npm install` 
+ 运行`npm run dev`
+ 浏览网页`http://localhost`

### 4、项目部署

#### 4.1 打包

##### 后端打包
`mvn clean package`

##### 前端打包
`pnpm run build:prod`


#### 4.2 Nginx配置
```
# 上传文件至远程服务器
将打包生成在 `dist` 目录下的文件拷贝至 `/usr/share/nginx/html` 目录

# nginx.cofig 配置
server {
	listen     80;
	server_name  localhost;
	location / {
			root /usr/share/nginx/html;
			index index.html index.htm;
	}
	# 反向代理配置
	location /prod-api/ {
			proxy_pass http://127.0.0.1:8080/; # 替换成你的后端网关API地址
	}
}
```


## 四、关注&支持作者

**感谢大家的关注与支持！希望利用本人从事电商10余年的经验帮助到大家提升工作效率！**

💖 如果觉得有用记得点 Star⭐


### 1、有偿服务
+ 提供部署服务
+ 提供演示包服务
+ 提供定制化开发服务
+ 提供系统培训服务
+ 提供版本商业化支持服务
+ 提供电商系统软著代申请服务（文档、源代码）
+ 提供电商平台appkey申请协助服务

### 2、更多服务

更多服务，请关注作者微信公众号：qihangerp168

<img src="公众号.jpg" width="300px" />


💖 欢迎一起交流！

### 3、捐助支持
作者为兼职做开源,平时还需要工作,如果帮到了您可以请作者吃个盒饭

<img src="weixinzhifu.jpg" width="300px" />
<img src="zhifubao.jpg" width="300px" />




