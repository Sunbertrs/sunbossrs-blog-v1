---
layout: post
title: 注册freenom域名并弄到GithubPage'
subtitle: '免费一年～'
description: 用的图片源是https://coderschool.cn/2197.html的。'
tags: 网站 教程 github
keywords: freenom 域名 github 注册 page
cover: 'https://gitee.com/srsyrzz/repository/raw/master/blogfile/freenomdomain/IMG_20180807_233511.jpg'
---
相信大家都知道了吧？我的域名srsyrzz.ml，已经开通并可以使用在我的博客里。  
  
你也可以做得到，看看这篇文章，你就知道是如何做到的啦.  
  
### 01. 注册一个域名
进入[freenom网站](http://freenom.com)来注册一个域名.在这个框框里输入你的主域。  
  
然后点击 `检查可用性` ，这时候你可能看不到有任何东西出现，浏览器也没有加载。  
不过那是在后台运行。等一会儿之后，页面会自动变化。这时候有几个免费域名可以给你选。  
![pic](https://imgsa.baidu.com/exp/w=640/sign=1959470dd039b6004dce0cb3d9513526/7aec54e736d12f2eb5afea8e4ac2d562843568b1.jpg)
  
选好之后，你就可以直接选择完成进入下一步。进入下一步后，在域名选项的最右侧有个 `period` 选项，你可以在它的列表里选择你想申请免费的时间，比如，可以免费申请一年，那么我选择 `12 months free`这个选项。  
![pic](https://coderschool.cn/wp-content/uploads/2017/03/freenom2.png)  
  
下一步，会叫你输入邮箱进行验证或登录 google或者facebook等社交账户进行验证。
![pic](https://coderschool.cn/wp-content/uploads/2017/03/freenom4.png)
点击下面的 `verify my email address` 来验证你的邮箱。这时候你的邮箱会收到一条信息，验证后，你必须填写一些基本的信息。  
  
信息填完成，点击完成订购按钮，这时候系统会再给你发一封确认订购的邮件，你需登陆邮箱完成确认订购。确认完成后你用上面设置的账户进行登陆，登陆后点击右上角的 service 选项下的 My Domians。
![pic](https://coderschool.cn/wp-content/uploads/2017/03/freenom6.png)  
然后选择你的那个域名，点击manage domain.  
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/freenomdomain/IMG_20180808_002606.jpg)
然后点击 `manage freenom dns` 进去～  
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/freenomdomain/IMG_20180808_002950.jpg)  
然后看到一片空白。
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/freenomdomain/IMG_20180808_003111.jpg)  
这时候，我们要用到我们的命令行了。  
### 2. 知道自己的dns
在命令行里输入以下内容：
```bash / cmd
ping 你的github用户名.github.io
```