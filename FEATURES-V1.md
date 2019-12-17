
## V1 Features
### Android/iOS RuiAPP
#### 用户账号
1. 作为未注册用户，可以通过手机短信方式获取验证码登录，系统自动注册用户
2. 作为未注册用户，可以通过电子邮件方式获取验证码登录，系统自动注册用户
3. 作为未注册用户，可以通过手机短信方式通过忘记密码方式登录，系统自动注册用户
4. 作为未注册用户，可以通过电子邮件方式通过忘记密码方式登录，系统自动注册用户
5. 作为未注册用户，可以通过微信、支付宝、钉钉、Github、微博第三方账号方式登录，系统自动注册用户
5. 作为已注册用户，可以通过手机短信方式获取验证码登录
6. 作为已注册用户，可以通过电子邮件方式获取验证码登录
7. 作为已注册用户，可以通过手机短信方式通过忘记密码方式登录
8. 作为已注册用户，可以通过电子邮件方式通过忘记密码方式登录
9. 作为未注册用户，可以通过微信、支付宝、钉钉、Github、微博第三方账号方式登录
9. 作为已注册用户，可以使用用户名/手机号/电子邮件地址+密码方式登录

#### 通讯录及IM
10. 作为已登录用户，可以查看通讯录
11. 作为用户的通讯录，支持按照部门组织方式查看
12. 作为已登录用户，可以扫码加好友到通讯录
13. 作为已登录用户，可以与通讯录部门、个人进行文本聊天

#### 应用协作
14. 作为已登录用户，可以扫描RuiOPR桌面应用的登录二维码登录RuiOPR


### Win/Mac桌面RuiOPR
*桌面应用不提供用户注册、忘记密码等已在RuiAPP上已有的功能,以便更好推广RuiAPP，所以RuiOPR也不支持第三方如微信进行扫码登录*

#### 应用协作
1. 作为未登录用户，可以使用RuiAPP扫描RuiOPR桌面应用的登录二维码登录RuiOPR https://www.jianshu.com/p/7f072ac61763

#### 通讯录及IM
2. 作为已登录用户，可以查看通讯录
3. 作为用户的通讯录，支持按照部门组织方式查看
4. 作为已登录用户，可以与通讯录部门、个人进行文本聊天

#### 任务工单
5. 作为已登录用户，可以将一条、多条聊天信息转为任务工单，以便进行跟踪管理
6. 作为已登录用户，可以浏览按时间排序的任务清单
7. 作为已登录用户，可以按照关键字搜索任务清单


abc * def
=      abc
     * def
= (100a+10b+c) * (100d+10e+f)
=  100a*100d + 100a*10e + 100a*f
             + 10b*100d + 10b*10e + 10b*f
                        + c*100d + c*10e + c*f
=   10000a*d 
  + 1000a*e + 1000b*d   
  + 100a*f + 100b*e + 100c*d 
  + 10b*f + 10c*e 
  + c*f   




# 讨论技术架构

- ![Gxcel application architecture SAAS](document/DuolaLoveperPlatform.png)

## RSocket.io 连接
- [RSocket是一种新的，消息驱动的二进制协议，它标准化了云中的通信方法。它有助于以一致的方式解决常见的应用程序问题，并且它支持多种语言（例如java，js，python）和传输层（TCP，WebSocket，Aeron）](https://www.jdon.com/52741)
- [RSocket快速入门](https://yq.aliyun.com/articles/721916)
- [雷卷-RSocket Broker在阿里云上的服务-mesh，stream and iot](https://www.modb.pro/doc/1349)
- [Facebook Flipper with RSocket-cpp](https://github.com/facebook/flipper/blob/master/Specs/RSocket/0.10.0/RSocket.podspec)
- [All of the applications that communicate with each other through the Netifi broker—whether they be mobile devices, web browsers, or microservices—are “Netifi clients.”](https://docs.netifi.com/1.6.9/netifi_clients/)
- [如果RSocket-cpp不好用，Calling Java function from Qt C++](https://stackoverflow.com/questions/28655181/calling-java-function-from-qt-c)
- [如果RSocket-cpp不好用，Java Native Interface](https://docs.oracle.com/javase/6/docs/technotes/guides/jni/)
- [RSocket With Spring Boot + JS: Zero to Hero](https://dzone.com/articles/rsocket-with-spring-boot-amp-js-zero-to-hero)

## DGraph.io  数据图网
- [Running Stack Overflow on Dgraph](https://blog.dgraph.io/post/sql-vs-dgraph/)
- ![Gxcel application architecture SAAS](document/dgraph-schema.png)
- [知识图谱 4.2-知识图谱在电商领域中的应用实践](https://juejin.im/post/5cfb1f7c6fb9a07eeb1399f6)
- [商品知识图谱的数据大图](https://zhuanlan.zhihu.com/p/33075573)
- [整理知识图谱相关学习资料](https://github.com/husthuke/awesome-knowledge-graph)
- [大众点评搜索基于知识图谱的深度学习排序实践](https://www.infoq.cn/article/JZ_qdBDiMc1pHpBMDR2Q)


## Cadenceworkflow.io 任务协调
- [Cadence: The Only Workflow Platform You'll Ever Need](https://www.slideshare.net/MaximFateev/cadence-the-only-workflow-platform-youll-ever-need)
- [Cadence: The Only Workflow Platform You'll Ever Need](https://www.youtube.com/watch?v=llmsBGKOuWI)


## Bigdata Analysis 大数据分析
- [Pentaho’s data integration and analytics platform enables organizations to access, prepare, and analyze all data from any source, in any environment.](https://www.hitachivantara.com/en-us/products/data-management-analytics/pentaho-platform.html)

## IM Matrix.org
- [Clients may want to receive push notifications when events are received at the homeserver. This is managed by a distinct entity called the Push Gateway.](https://matrix.org/docs/spec/push_gateway/latest)
- [可以用WebRTC来做视频直播吗？对直播使用场景，很多人是用移动设备，移动设备基本都是用app。而webrtc中的Native Code部分跨平台特性很好，基本不用改，就能写出完全跨iOS、Android、Windows平台的代码，所以有了iOS/Android app，基本不耗成本Windows上的app就出来了。](https://www.zhihu.com/question/25497090)

## Tech basics  编程概念
- [不要再尝试函数式编程了](https://www.infoq.cn/article/b6gkx1crp2umU2*jIPQB)
- [5 分钟理解什么是“响应式编程（Reactive Programming）”](https://www.jianshu.com/p/035db36c5918)
