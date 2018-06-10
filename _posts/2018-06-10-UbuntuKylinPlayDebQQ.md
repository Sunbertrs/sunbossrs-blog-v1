---
layout: post
title: '在优麒麟系统里安装wineQQ'
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
  
### 2.准备你的deb包
QQ有6.4版本和6.6版本的deb包，都有些缺陷，比如截不了图啊，键盘输不了密码之类的，可以用就拿去用吧.下面是下载：  
  
[QQ6.4 32位下载<*.tar.gz>](http://pan.baidu.com/s/1eQgU5xS)
[QQ6.4 64位下载<*.deb>](http://pan.baidu.com/s/1mggLMB2)
  
[QQ6.6 32位下载<*.deb>](http://pan.baidu.com/s/1qWt4WUC)
[QQ6.6 64位下载<*.deb>](http://pan.baidu.com/s/1sjnxtyl)
  
[QQ7.8 Longene<*.deb>](http://www.longene.org/download/WineQQ7.8-20151109-Longene.deb)
  
### 3.安装
Wine的deb包不能直接安装,我们要用命令安装:
```css
cd 下载/
sudo dpkg -i *你下载的安装包的名字*.deb
sudo apt -f install
```
如果你不喜欢,可以删除wineqq包:
```css
sudo apt remove wineqq
```
### 4.进入

点击左下角的"开始"菜单,然后输入`QQ`如果你发现搜索结果有QQ ,把它拖到桌面(方便),然后打开他.  
