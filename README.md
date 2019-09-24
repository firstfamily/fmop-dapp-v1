# Biz table data for any team FMSOP Dapp v1
![Biz table data for any team FMSOP Dapp v1](document/taskman/fmsop_dapp_v1.png)


## 技术栈

The choice of Golang comes from the fact that it has the same tooling on every platform. Plus Golang is a great language because it keeps everything simple and readable, which makes it easy to build cross-platform plugins.

**[Wails applications consist of 2 parts: 1️⃣ A backend written in Go 2️⃣ A frontend written using standard HTML/JS/CSS](https://wails.app/quick_start.html)**
- [用户界面：Building a Desktop App in Go using Wails](https://medium.com/js-dojo/building-a-desktop-app-in-go-using-wails-b7f5825f986a)
- [用户界面：Build a Vue chat app](https://medium.com/js-dojo/build-a-vue-chat-app-1822e7d70a5e)
- [用户界面：![made with vue.js](document/taskman/clibd-io.jpg )](https://madewithvuejs.com/clipdio?ref=vuetifyjs.com)
- [用户界面：Package systray is a cross platfrom Go library to place an icon and menu in the notification area. Tested on Windows 8, Mac OSX, Ubuntu 14.10 and Debian 7.6.](https://github.com/getlantern/systray)

- [消息获取：A GraphQL client library for Go](https://blog.machinebox.io/a-graphql-client-library-for-go-5bffd0455878)
- [消息推送：![The Massively Scalable MQTT Broker for IoT and Mobile Applications](document/taskman/emqtt-overview.png)](http://emqtt.io/)

- [监控剪贴板：This Go application will monitor your clipboard for urls and automatically starts download with youtube-dl.](https://github.com/hebestreit/clipboard-yt-dl)
- [监控剪贴板：clipboard.ReadAll()](https://github.com/atotto/clipboard/blob/master/clipboard_windows.go)
- [监控剪贴板：Monitor starts monitoring the clipboard for changes. When a change is detected, it is sent over the channel.](https://github.com/spy16/clipboard/blob/master/cmd/monitor/main.go)
- [监控剪贴板：WriteAll is broken on windows #212, clipb, _ := robotgo.ReadAll()](https://github.com/go-vgo/robotgo/issues/212)
- [Golang 跨平台自动化系统, binding 其他编程语言; 控制键盘鼠标位图和读取屏幕，窗口句柄以及全局事件监听](https://cloud.tencent.com/developer/article/1422348)

- [获取浏览地址：Go lang check if active window the window yo are looking for](https://gist.github.com/obonyojimmy/f80a41b4adb18fe5389e98b64b27f21d)
- [获取浏览地址：how to get URL form any web browser (like firefox,ie,google chrome,...) in C#](https://www.codeproject.com/Questions/354848/how-to-get-URL-form-any-web-browser-like-firefox-i)
- [获取浏览地址：Golang Desktop Automation. Control the mouse, keyboard, bitmap, read the screen, Window Handle and global event listener.](https://github.com/go-vgo/robotgo)
- [获取输入字符：The hook itself is asynchronous, you can consider calling the hook code. ](https://github.com/go-vgo/robotgo/issues/214)
- [C#--知道了某个浏览器窗口的句柄，可以获取到里面的 HTML 吗？](https://www.v2ex.com/t/596698)
- [如何获取Windows中活动的Google Chrome标签的网址？](https://oomake.com/question/3200238)

- [三方登录：Easy social login in Go lang](https://codelike.pro/easy-social-login-oauth-in-go-lang/)
- [三方登录：Choose a subpackage. Register the LoginHandler and CallbackHandler for web logins or the TokenHandler for (mobile) token logins.](https://github.com/dghubble/gologin)
- [本方登录：Vue.js + Vuex - JWT Authentication Tutorial & Example](https://jasonwatmore.com/post/2018/07/06/vue-vuex-jwt-authentication-tutorial-example)
- [本方登录：We are intercepting axios call to determine if we get 401 Unauthorized response. If we do, we dispatch the logout action and the user gets logged out of the application. This takes them to the login page like we designed earlier and they can log in again.](https://scotch.io/tutorials/handling-authentication-in-vue-using-vuex)

## 功能
- 系统托盘
- 用户登录注册（手机、电邮、微信、QQ、Github）,
- 忘记密码（通过电邮、手机短信重置密码）
- 接收消息推送通知
- 刷新消息列表
- 根据剪贴板中信息智能刷新助手信息（可能是工作指南、知识网页、某个网页应用的链接...）



# FMOP Manager Dapp v1
![Biz table data for any team FMSOP Dapp v1](document/gxcel-manager-dapp.png)

## 技术栈
- [用户界面：Qt与HTML/JavaScript网页端通信和调用 new QWebChannel(socket, function(channel)](https://github.com/therecipe/qt/blob/5355937d17e9eee62460706cb9a033180014400e/internal/examples/webchannel/webview/index.html)
- [用户界面：Qt binding for Go (Golang) with support for Windows / macOS / Linux / FreeBSD / Android / iOS / Sailfish OS / Raspberry Pi / AsteroidOS / Ubuntu Touch / JavaScript / WebAssembly](https://github.com/therecipe/qt/wiki/Gallery)

- [用户界面：State of GUI App Development with Go in 2018: When possible, use therecipe/qt + QtQuick. Except for the license, I don’t think there are any reason to not use it. This is what I ended up using for the company’s app. If you have no time, chased by deadline, and don’t have any time to test other tools, use Electron. However, do note that Electron is really heavy on resources, so I’m only using this as the last or temporary choice. For the company’s app, I’ve used Electron for the first three months, then I replace it with Qt. Sciter is interesting because it’s faster and lighter than the other, not to mention it has permissive license unlike Qt and therecipe/qt. However, because I was busy and the docs are not really good, I haven’t use it very much and only tested the demos. If you’ve got the time to learn, experiment, digging information and asking in forum, you should try it. I can’t recommend webview because sometimes it’s failed to render my view correctly.](https://www.douban.com/note/690095809/)
- [用户界面：When possible, use therecipe/qt + QtQuick. Qt Quick简介](https://wizardforcel.gitbooks.io/qt-beginning/content/61.html)

- [用户界面：QML is an acronym that stands for Qt Meta-object Language. It is a declarative programming language that is part of the Qt framework. QML's main purpose is fast and easy creation of user interfaces for desktop, mobile and embedded systems. QML allows seamless integration of JavaScript, either directly in the QML code or by including JavaScript files.](https://riptutorial.com/qml)

- [用户界面：Why you should use Qt/QML for your next cross-platform application — part 1 — desktop](https://medium.com/&commat;petar.koretic/why-you-should-use-qt-qml-for-you-next-cross-platform-application-part-1-desktop-5e6d8856b7b4)
- [用户界面：A Book about Qt5, Model-View-Delegate](http://qmlbook.github.io/ch07-modelview/modelview.html)
- [用户界面：Qt5的安装,选择therecipe/qt的理由是首先因为它提供的API与原生Qt以及其他binding（例如pyqt5）几乎一样](https://www.cnblogs.com/apocelipes/p/9300335.html)
- [用户界面：如何编译使用了therecipe/qt的项目](https://www.cnblogs.com/apocelipes/p/9300335.html)
- [用户界面：开发方式采用该作者的建议，Got-qt GUI Framework 一个利用Go和QML中构建跨平台GUI界面的框架,This is a framework to make desktop/mobile applications in Go with a GUI written in Qt Qml. It uses the Material framework from Google for the UI in Qml, and uses Go as a backend.  I just wanted an easy way to build desktop apps with Go.](https://github.com/amlwwalker/got-qt)
- [用户界面:This is part 5 of a series of demo apps helping you to understand Qt 5.7 for x-platform development on Android and iOS. For Tablets and Desktop Google recommends to use a SideBar – so I implented a SideBar which will be shown automagically in Landscape.](https://appbus.wordpress.com/2016/06/14/bottom-navigation-app/)
- [用户界面：在QML中使用QSystemTrayIcon(系统托盘)](https://blog.csdn.net/u011283226/article/details/79812221)
- [A curated list of awesome Qt and QML libraries, resources, projects, and shiny things.](https://github.com/mikalv/awesome-qt-qml)
- [ModelView with QTreeView and QFileSystemModel](https://www.bogotobogo.com/Qt/Qt5_QTreeView_QFileSystemModel_ModelView_MVC.php)
- [没有可以使用TreeView的本机QML模型，所以我实现了一个试图通用的模型](https://github.com/eyllanesc/stackoverflow/tree/master/questions/56264007)

## RPA
![Biz table data for any team RPA_Graphics_Infographic_F](document/RPA_Graphics_Infographic_F.png)
![Biz table data for any team robotic-process-automation1](document/robotic-process-automation1.png)
- [Robotics Process Automation(RPA) allows organizations to automate task just like a human being was doing them across application and systems. Robotic automation interacts with the existing IT architecture with no complex system integration required. RPA can be used to automate workflow, infrastructure, back office process which are labor intensive. These software bots can interact with an in-house application, website, user portal, etc. The RPA is a software program which runs on an end user's pc, laptop or mobile device. It is a sequence of commands which are executed by Bots under some defined set of business rules.](https://www.guru99.com/robotic-process-automation-tutorial.html)



## Golang+QtQuick QML Win7开发环境搭建

- 打开PowerShell

    ```bash
    PS E:\conan> go version

    go version go1.13 windows/amd64
    ```

    ```bash
    PS E:\conan> dir env:

    GO111MODULE                    on
    GOPATH                         e:\conan\go
    GOPROXY                        https://goproxy.io
    GOROOT                         D:\tools\Go\
    QT_DIR                         D:\tools\Qt
    QT_VERSION                     5.13.1
    PATH                           D:\tools\go\bin;E:\conan\go\bin;


    ```

    [therecipe/qt Installation on Windows](https://github.com/therecipe/qt/wiki/Installation-on-Windows)
    ```
    In Module mode

    PS E:\conan> git clone https://github.com/therecipe/examples.git ; cd ./examples ; go mod download ; go get -u -v github.com/therecipe/qt/cmd/qtdeploy ; go get -u -v github.com/therecipe/qt/cmd/... ; go mod vendor ; git clone https://github.com/therecipe/env_windows_amd64_513.git vendor/github.com/therecipe/env_windows_amd64_513 ; $env:GOPATH\bin\qtdeploy test desktop ./basic/widgets

    ```
    
- 打开cmd
    ```
    d:\git\examples>where qtdeploy
    E:\conan\go\bin\qtdeploy.exe
    ```    

    [demo setup got qt (use subtitles)](https://www.youtube.com/watch?v=T96KOy4sTJ8&feature=youtu.be)

