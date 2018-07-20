---
layout: post
title: '修改mcbe手机版开始界面'
subtitle: '我的世界全新推出了BetterTogether更新，并取名为BedrockEdition(基岩版)。我们来看看手机版如何修改开始界面。'
tags: minecraft MinecraftPE
keywords: mcbe 我的世界手机版 BetterTogether 开始界面
category: tech
cover: 'https://gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708131341010021_1080.jpeg' 
---
*需要材料*  
  
*我的世界手机版1.2以上的安装包一个*  
*`APK编辑器`或者是`MT管理器`。*  
*准备好要换的开始界面图片。*  
  
送大家一张图片哈。  
![loading_screen_0.png](https://gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708131341010021_1080.jpeg)  
  
**开始教程**
  
***

### 01.打开apk
打开你的APK编辑器，然后选择minecraft， `Simple edit` 。 (√)  
*MT管理器是要你下载一个mc的apk安装包，然后打开那个apk的位置，点击进入apk包的内部。*  
<img width=-30 height=-30 src="https://gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708131347569224_1080.png" />  
点击mc。  
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708131347564333_1080.jpeg)  
  
点击Simple edit。  
  
![pic](https://m.gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708131347563355_1080.jpeg)

### 02.进入图片路径
打开以下路径。  
```path
/assets/resource_packs/vanilla_loading_screen/
```
保存那个图片，如下图。  
![pic](https://m.gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708131347565112_1080.png)

### 03.编辑图片
先把apk编辑器放到后台，然后看以下内容。  
直接在原图里修改：打开像素小画家，进入图片里修改。(√)  
*使用其他图片：使用图片编辑器打开你的图片，然后把图片ps成1920x1080的分辨率，然后保存。*  
```default
打开图片
```
进入ApkEditor文件夹。  
  
进入image文件夹。  
  
找到 `loading_screen_0.png`  
  
修改。我在上面写了几个字。  
  
![pic](https://m.gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708171347159364_1080.png)  
覆盖。  
```default
保存图片
```
```default
储存
```
```default
你确定要覆盖之前的图片？
>YES<        NO
```
  
### 04.再提换图片
把之前放到后台的apk管理器打开，再覆盖之前的 `loading_screen_0.png` 。  
![pic](https://m.gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708202218166688_1080.png)  
点击了那个按钮，就会进入系统 `/storage/emulated/0/` 的位置。这是系统的主要位置。如果你要看 `/` 你就得root你的手机才能看到。(你不可能把图片放到 / 里。。)  
进入以下文件夹：
```path
/storage/emulated/0/ApkEditor/images/loading_screen_0.png
↓
进入ApkEditor/images/找到loading_screen_0.png
```
保存。搞定！  
![pic](https://m.gitee.com/srsyrzz/repository/raw/master/blogfile/copyright.LaoZhao/201708221413118725_1080.jpeg)

### 安装
恭喜你！完成了修改mc的开始图片！现在，你会看到下面有三个按钮，最左边的一个是删除之前装在手机里的mc，中间的那个是安装，右边的那个是退出。  
如果你的手机可以直接安装的话，就点中间的按钮。  
如果你的手机使用直接安装的话安装不了，你要点左边的按钮，删除之前再点击安装按钮。千万记住！卸载mc时不要点击 *删除该软件所在的文件目录*！这会删除你的存档之类的东西。  
  
安装完后，你就可以退出了.
```default
*****End*****
*  Bye bye. *
*************
```
