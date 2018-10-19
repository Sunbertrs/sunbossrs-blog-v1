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
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/01.png)
### 2. 开始正题
我们输入命令
```bash
cd /bin/
```
来把终端定位到根目录里`bin`的这个文件夹。  
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/02.png)  
  
之后我们来`ls`一下看看里面有什么内容。  
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/03.png)
我们可以看到，这里面差不多背全了我们使用过的命令。  
我们便可以使用`cp`命令来复制这些命令题并重新命名。  
这里庄主要把`cp`这个命令弄成`copy`.  
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/04.png)
结果，权限不够。我们需要在我们的·复制·的这个命令前加个`sudo`.  
<pre>
  <code class="language-bash">
  修改前：
  cp <strong>cp copy</strong>
  修改后：
  sudo cp <strong>cp copy</strong>
  </code>
</pre>
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/05.png)
现在你们会看到，命令成功的运行。  
我们再列出一下，这里多出了copy！对！  
copy在列出来的第一竖。  
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/06.png)  
其实不需要重启，立刻可以使用！  
还能用，哈哈！  
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/07.png)  
还真有document.txt这个内容，亲测能行！
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/08.png)  
正在尝试搞坏mkdir君...成功
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/09.png)  
这不是我手动创建的
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/10.png)  
搞坏mv君...成功
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/11.png)
正在清除之前的两个文档中...  
rm君已死亡[滑稽]
![pic]({{ site.imgbed }}/img/DefineTerminalCoommand/12.png)
*修改于2018年10月19日--我已经把电脑改回ntfs格式了，等着在bash on windows见吧*
