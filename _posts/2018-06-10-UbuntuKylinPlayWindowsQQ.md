---
layout: post
title: '在优麒麟系统里安装Windows QQ'
description: '没想到吧。。。。'
tags: linux ubuntu 教程
keywords: linux ubuntukylin 教程 ubuntu
category: tech
cover: 'http://www.ubuntukylin.com/public/images/s_ubuntukylin1804.jpg'
---
哈喽，观众朋友们，大家好！（然而并不是在直播，也不是录视频)  
今天，我们在ubuntukylin系统里面安装wineQQ（不要问我为什么又换了系统）  
> ubuntukylin系统比任何系统都不一样，因为他用mate作为桌面环境,并对该环境做了一定的修改,成为ukui.所以我们现在在ubuntukylin里,用的都是mate配套的软件.  
MATE可以运行wine,不过有点麻烦.
  
### 1.下载wine
首先,我们运行命令:  
  
这里为什么我不用添加wine源再下载wine，而要下载
```bash
sudo dpkg --add-architecture i386
sudo apt install wine1.6
wine --version
```
当你运行`wine --version`时,如果反馈出`wine-3.0 (Ubuntu 3.0-1ubuntu1)`的话,代表你的wine就是在3.0版本.  
  
### 2.准备你的.exe包
到[im.qq.com](https://www.qq.com)下载一个tim或者qq
### 3.在wine里添加一定的函数库
在终端里输入:(不要用root)
```bash
winecfg
```
然后点击`函数库`,添加以下函数:
```bash
*ntoskrnl.exe
*riched20
*txplatform.exe
*msls31.dll
*dwrite.dll
```
然后把这三个函数弄成这样:  
```default
*ntoskrnl.exe          -->  停用
*riched20              -->  原装(windows)
*txplatform.exe        -->  停用
*msls31.dll            -->  原装(windows)
*dwrite.dll            -->  原装(windows)
```
![avatar](https://img.ithome.com/newsuploadfiles/2017/5/20170503_130210_364.jpg)  
*(这是ubuntu,不是ubuntukylin.所以配置有所不同.)*  
亲测：  
停用`ntoskrnl.exe`是为了解决无法正常启动QQ的问题，使用原装windows的`riched20`是为了规避无法输入用户名的Bug，停用`txplatform.exe`是为了避免QQ无法完整退出而滞留整个Wine容器的问题，使用原装的`*msls31.dll`和`*dwrite.dll`是因为不要让这两个控件因为不受控制而让QQ突然崩溃。  
然后保存.  
![avatar](https://gitee.com/srsyrzz/repository/raw/master/blogfile/ukqq/2018-06-11%2018-12-09shotscreen.png)
### 4. 设置字体(修复中文乱码的bug)
在桌面（或者哪里都行）创建一个名字叫做`zh.reg`的文件，该文件里输入以下内容：
```regedit-windows
REGEDIT4
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\FontSubstitutes]
"Arial"="WenQuanYi Zenhei"
"Arial CE,238"="WenQuanYi Zenhei"
"Arial CYR,204"="WenQuanYi Zenhei"
"Arial Greek,161"="WenQuanYi Zenhei"
"Arial TUR,162"="WenQuanYi Zenhei"
"Courier New"="WenQuanYi Zenhei"
"Courier New CE,238"="WenQuanYi Zenhei"
"Courier New CYR,204"="WenQuanYi Zenhei"
"Courier New Greek,161"="WenQuanYi Zenhei"
"Courier New TUR,162"="WenQuanYi Zenhei"
"FixedSys"="WenQuanYi Zenhei"
"Helv"="WenQuanYi Zenhei"
"Helvetica"="WenQuanYi Zenhei"
"MS Sans Serif"="WenQuanYi Zenhei"
"MS Shell Dlg"="WenQuanYi Zenhei"
"MS Shell Dlg 2"="WenQuanYi Zenhei"
"System"="WenQuanYi Zenhei"
"Tahoma"="WenQuanYi Zenhei"
"Times"="WenQuanYi Zenhei"
"Times New Roman CE,238"="WenQuanYi Zenhei"
"Times New Roman CYR,204"="WenQuanYi Zenhei"
"Times New Roman Greek,161"="WenQuanYi Zenhei"
"Times New Roman TUR,162"="WenQuanYi Zenhei"
"Tms Rmn"="WenQuanYi Zenhei"
```
保存．  
然后在终端输入`wine regedit`  
`注册表>导入注册表文件>zh.reg`  
保存.  
随后，你就可以删除这个`zh.reg`文件了。
### 5.安装
```basg
wine ~/下载/*文件名*.exe
```
然后进入安装页面.
### 6.进入
这时安装好了,你的QQ应处于`~/.wine/drive_c/Program Files (x86)/Tencent/QQ/Bin`目录下.  
  
使用
```bash
wine .wine/drive_c/Program\ Files\ \(x86\)/Tencent/QQ/Bin/QQ.exe
```
来运行QQ.  
以后，运行QQ就是用上面的那个命令。
