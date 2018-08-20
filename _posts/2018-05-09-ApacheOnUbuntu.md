---
title: 'Ubuntu系统安装apache'
subtitle: '又是下载站，也能网站制作'
layout: post
category: tech
tags: 教程 linux
keywords: 教程 linux
date: 2018-05-09
description: '这是一个web server'
cover: https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/cover.png
---

~~你需要一个好的linux系统~~  
![pic]![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/04.jpg)
安装apache。
```bash
sudo apt-get install apache2
```
他会叫你是否确认安装，你就选yes。  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/01.jpg)  
  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/02.jpg)  
安装完成后，你就可以使用以下命令调试apache。
开启apache
```bash
sudo apache2ctl -k start
```
关闭apache
```bash
sudo apache2ctl -k stop
```
重启apache
```bash
sudo apache2ctl -k restart
```
虚拟目录在 httpd.conf 中，看如下:
```apache  
<VirtualHost *>
DocumentRoot "/home/你的ubuntu用户名/目录"
ServerName *自定义域名*
<Directory "/home/你的ubuntu用户名/目录"> allow from all Options +Indexes </Directory>
</VirtualHost>
```
把上面的信息补充好。再看这里。
在 `/etc/apache2/sites-enabled/000-default`中，里面有这样的一段内容：
```bash
NameVirtualHost *
<VirtualHost *>
ServerAdmin webmaster@localhost
DocumentRoot /var/www/
```
这是设置虚拟主机的，对我来说没什么意义。里面的```ServerAdmin```是指管理员邮箱。```DocumentRoot```不用理他。

### 试验

因为上面我们已经完成了，基本上的配置了。所以，现在我们输入```*你的自定义域名*```或者```http://localhost/```
**记住!上面用了自定义域名的，必须要重启apache才能生效!**
```bash
sudo apache2ctl- k restart
```
就会看到```it's work!```的字样了。  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/05.jpg))

### 下载站

如果你不想让这个网站```it's work!```，要不然的话，就会失去他的一个价值:开源站！！
如果你要把他变更为下载站的话，就要
> 将Apache24/htdocs文件夹下面的index.html删除，因为默认显示这个页面。  
我们刚才看到的 It's works! 页面就是这个文件的内容，然后将我们的文件及文件夹放到Apache24\htdocs下面，就可以成为下载站了。  
这时候，你看到的标题是```index of *你的文件夹路径*```了。  
  

