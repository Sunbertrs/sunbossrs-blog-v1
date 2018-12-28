---
layout: post
title: '在安卓手机运行Bochs虚拟机'
subtitle: '虚拟机是在电脑上运行电脑的机器。虚拟机可运行的系统分很多种。'
tags: Windows Android 教程
keywords: Android Bochs 虚拟机 教程 手机 运行
category: tech
cover: https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/Bochs/cover.jpg
---
### 前言
众所周知，虚拟机其实就是运行在电脑里的机器。因为感觉太梦幻[滑稽]所以被称呼为虚拟机器(Virtual Machine)简称VM。  
  
● 什么鬼？虚拟机运行在手机里？  
○ 那肯定了。虚拟机也可以运行在手机里的哦。  
  
在这篇文章里，我讲讲解如何使用Bochs来运行虚拟机。  
因为使用Bochs比Limbo好很多，所以我们用Bochs。使用Limbo来运行虚拟机可以，但可能会很容易闪退。  
  
[从这里](https://pan.baidu.com/s/1LdY6jq8AUrWjqGrQjPdQEw)下载Bochs和镜像。（再次推荐用Bochs，因为Limbo不稳定。）  
下载链接里要输入提取码。提取码是jip7。 
  
*Let's get start!*  
  
### 01.下载内容
下载`安卓Bochs`文件夹中的文件。（建议下载`Bochs配置包.zip`，因为操作方便。   但是使用`BochsCore`更方便，但操作鼠标不大行，不过可以控制硬件。）  
  
之后下载`即用的img镜像`文件夹中的*其中一个内容*。如果使用`Windows系统`，可以下载`AndowsXP.img`的文件。因为该镜像*轻量化*。下载`WindowsXP.img`或者是`Windows10.img`可能会花费你*2+天*的时间。但要看你网速快不快。  

![pic]({{ site.imgbed }}/img/Bochs/01.png)  

![pic]({{ site.imgbed }}/img/Bochs/02.png)  

### 02.制作启动
如果你不想继续看此教程  你可以打开在下载好的bochs配置压缩包里面的教程文档，并关掉此页面。  
      
下载好镜像后，将其名字命名为`go.img`。  
  
之后解压`Bochs配置包.zip`，把名字为`SDL`的文件夹移到*内部储存*目录，之后，安装 *包* 内的`InstallBochs.apk`。  

![pic]({{ site.imgbed }}/img/Bochs/03.png)  

![pic]({{ site.imgbed }}/img/Bochs/04.png)  

![pic]({{ site.imgbed }}/img/Bochs/05.png)  
↓移到*内部储存*
![pic]({{ site.imgbed }}/img/Bochs/06.png)  

![]({{ site.imgbed }}/img/Bochs/07.png)
把`go.img`放到 `内部储存/SDL/` 文件夹根目录。

![]({{ site.imgbed }}/img/Bochs/08.png)

![]({{ site.imgbed }}/img/Bochs/09.png)

![]({{ site.imgbed }}/img/Bochs/10.png)

![]({{ site.imgbed }}/img/Bochs/11.png)
↓我这里直接到*内部储存/SDL*目录了
![]({{ site.imgbed }}/img/Bochs/12.png)

![]({{ site.imgbed }}/img/Bochs/13.png)
### 03.大功告成！
现在已经完成了！当你装好`Bochs`后，他会显示在手机桌面。点击它并启动。  
  
使用`BochsCore`的人可以自由设置*内存*和*其他硬件*。  

![]({{ site.imgbed }}/img/Bochs/14.png)  
![]({{ site.imgbed }}/img/Bochs/15.png)
### 使用教程
*请注意，这里我说的是Bochs而不是BochsCore。BochsCore操作鼠标是使用屏幕点击。我不大知道。)*  
  
按下`音量+`来对鼠标进行`左键`  
  
按下`音量-`来对鼠标进行`右键`  
  
在屏幕上`滑动`来对鼠标进行`移动`  
  
点击`屏幕左下角`来打开`键盘`
