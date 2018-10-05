---
layout: post
title: '重新自定义命令'
description: '一下修改命令，不需要多废话...'
tags: 电脑 技术 linux
category: tech
cover: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/cover.png'
---
喜欢玩GNU的人都知道，linux的bash可出名了。  
~~我们可以拿kali linux的bash来搞别人的wifi~~  
不过，你们会不会觉得，bash好是好，但是不能修改命令题？  
也许觉得会不会太没乐趣了？  
最近装上了mac，刚好mac搭建在freeBSD，而竟然自带gnu?!  
所以我拿bash来搞事情了....  
  
### 1.打开终端
做修改命令的，我们还是要打开终端.
![pic]({{ site.imgbed }}img/DefineTerminalCommand/02.png)
### 2. 开始正题
我们输入命令
```bash
cd /bin/
```
来把终端定位到根目录里`bin`的这个文件夹。  
  
之后我们来`ls`一下看看里面有什么内容。
![pic]({{ site.imgbed }}img/DefineTerminalCommand/03.png)
我们可以看到，这里面差不多背全了我们使用过的命令。  
我们便可以使用`cp`命令来复制这些命令题并重新命名。  
这里庄主要把`cp`这个命令弄成`copy`.
![pic]({{ site.imgbed }}imgDefineTerminalCommand/04.png)
结果，权限不够。我们需要在我们的·复制·的这个命令前加个`sudo`.  
<pre>
  <code class="language-bash">
  
  修改前：
  cp <strong>cp copy</strong>
  修改后：
  <address>sudo</address> cp <strong>cp copy</strong>
  
  </code>
</pre>
![pic]({{ site.imgbed }}DefineTerminalCommand/05.png)
