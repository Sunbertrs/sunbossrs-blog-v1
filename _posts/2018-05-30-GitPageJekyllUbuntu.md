---
layout: post
title: 'ubuntu使用GitPage搭建Jekyll'
subtitle: '采用git '
keywords: github jekyll 教程 ubuntu 网站
tags: 教程 ubuntu github
category: tech
cover: 'http://on2171g4d.bkt.clouddn.com/jekyll-banner.png'
---
1. 打开`github.com`  
  
2. 注册一个账号    
  
3. 点开右上角的加号 ， `add a repository`  
  
4. 填写以下信息：  
  
5. 安装git程式  
*这里我用了ubuntu，下次开windows的讲解*  
```bash
sudo apt-get install git
```
  
6. 使用git命令把你的仓库clone下来  
```bash
git clone https://github.com/*你的github用户名*/*你的github用户名*.github.io.git
```
  
7. 这时，打开你的`/home/*用户名*`目录，发现多了空文件夹名字叫做`*你的GitHub用户名*.github.io`。  
  
8. 这时，去jekyll主题下载一个，修改一下，然后把里面的内容放到那个空文件夹里。  
  
9. 执行命令
```bash
cd *github名字*.github.io/
git add .
git commit -a -m "修改说明，这个命令必须输入。"
git config --global user.email "在github里输入的邮箱”
git config --global user.name "github用户名"
git commit -a -m "修改说明，这个命令必须输入。"
git push
```
这时，bash让你输入github的信息，如样输入。   
  
10. 来到你的仓库查看  
是不是很神奇，所有东西上传上去啦！
  
11. 获取你的网址  
在仓库的右上边，有一个`settings`选项。  
点开它。  
下拉，找到`Github Pages`选项，已经启用了，**还标明了地址，记住他。**
  
12. 享受新生活！
  
*  以后，改好/写好 一篇博文，只需要使用以下几个命令  
* `cd Desktop/`  
* `cd *你的github名.github.io/`  
* `git add .`  
* `git commit -a -m "修改说明"`  
* `git push`   
  
  
**完。**
