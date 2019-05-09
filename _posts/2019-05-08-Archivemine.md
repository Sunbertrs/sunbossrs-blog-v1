---
layout: post
title: '如何把别人的一个仓库“据为己有”的复制到你的账号'
subtitle: '仅供学习交流..'
tags: linux github 学习
category: tech
keyword: 仓库 github 据为己有 账号 别人 如何 复制
cover: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/archivemine/cover.jpg'
---
### 前言
这是给一些不方便用电脑或有强迫症的人使用的，就像我==  
比如说，你现在在用手机修改代码，你突然之间想起代码库要彻底的换掉，而换掉的代码库刚好在别人的号里有。这时，你需要打开电脑把别人的仓库代码下载然后解压zip复制zip内容，之后再`GitPush`上传。你会发现这很麻烦，而且还很费时：从电脑开机到下载，从下载到系统处理复制文件，直至关机。多么麻烦啊！倒不如换一种方法来行通。

### 01. 先创建一个新仓库
就先让以前的仓库搁着，别动。创建一个让你认知性强的仓库名称，例如原先你有个仓库叫`abcd-database`,那么你可以创建的那个仓库名叫`abcd-database-NEWCOPY`。  
![]({{ site.imgbed }}/img/archivemine/01.jpg)
![]({{ site.imgbed }}/img/archivemine/02.jpg)

### 02. 找到导入代码入口并进去
接下来，你可以看到创建的新仓库一个文件和目录都没有。那么，接下来下面的操作可能让你意想不到。  
看到下面有个按钮了吗？如果有，请按下去！如果没有，请仔细找找。一个`Import code`按钮。  
相信会英文的人已经知道是什么意思了。就是*导入代码*！
![]({{ site.imgbed }}/img/archivemine/03.jpg)

### 03. 来到你要参考的代码库复制链接
把这个网页挂到后台，创建一个新页面。  
你先来到你要参考的代码库，然后在地址栏里复制这个代码库的链接。如果要复制有指定的科目，如`main`、`master`或其他的话，请进入到指定的科目再复制链接。  
![]({{ site.imgbed }}/img/archivemine/04.jpg)

### 04. 让Github自己搞定
做到这里就差不多了。回到刚才的那个页面，把链接输入到那个写着灰色字的输入框，填写完后按下绿色的键。  
*话说我在干什么你们是心知肚明的哈*  
![]({{ site.imgbed }}/img/archivemine/05.jpg)
输入完并按下绿色键后，你会发现你进入了一个*Prepare*字样的页面，你在这个页面待个两三四秒，就点击页面上的`你的账户名/仓库名`这里。  
![]({{ site.imgbed }}/img/archivemine/06.jpg)

### 05. 完成！
没错，你回到了原来的新建仓库的页面。可是，*已经发生了天翻地覆的改变*。现在，你就相当于*在线clone别人的仓库，然后据为己有了*。
![]({{ site.imgbed }}/img/archivemine/07.jpg)
