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
```css
sudo dpkg --add-architecture i386
sudo apt install wine1.6
wine --version
```
当你运行`wine --version`时,如果反馈出`wine-3.0 (Ubuntu 3.0-1ubuntu1)`的话,代表你的wine就是在3.0版本.  
  
### 2.准备你的.exe包
到[im.qq.com](https://www.qq.com)下载一个tim或者qq
### 3.在wine里添加一定的函数库
在终端里输入:(不要用root)
```css
winecfg
```
然后点击`函数库`,添加以下函数:
```css
*ntoskrnl.exe
*riched20
*txplatform.exe
```
然后把这三个函数弄成这样:  
![avatar](https://img.ithome.com/newsuploadfiles/2017/5/20170503_130210_364.jpg)  
其中：停用ntoskrnl.exe是为了解决无法正常启动QQ的问题，使用原装的riched20是为了规避无法输入用户名的Bug，停用txplatform.exe是为了避免QQ无法完整退出而滞留整个Wine容器的问题。  
  
然后保存.
### 4.安装
```css
wine ~/下载/*文件名*.exe
```
然后进入安装页面.
### 5.进入
这时安装好了,你的QQ应处于`~/.wine/drive_c/Program Files (x86)/Tencent/QQ/Bin`目录下.  
  
使用
```css
cd ~/.wine/drive_c/Program Files (x86)/Tencent/QQ/Bin
wine QQ.exe
```
来运行QQ.你喜欢,也可以试试
```css
cp ~/.wine/drive_c/Program Files (x86)/Tencent/QQ/Bin/QQ.exe ~/桌面/
```

