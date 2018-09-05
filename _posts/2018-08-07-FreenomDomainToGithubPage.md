---
layout: post
title: 注册freenom域名并弄到GithubPage
subtitle: '免费一年～'
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
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/01.jpg)
  
选好之后，你就可以直接选择完成进入下一步。进入下一步后，在域名选项的最右侧有个 `period` 选项，你可以在它的列表里选择你想申请免费的时间，比如，可以免费申请一年，那么我选择 `12 months free`这个选项。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/02.png)  
  
下一步，会叫你输入邮箱进行验证或登录 google或者facebook等社交账户进行验证。
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/03.png)
点击下面的 `verify my email address` 来验证你的邮箱。这时候你的邮箱会收到一条信息，验证后，你必须填写一些基本的信息。  
  
信息填完成，点击完成订购按钮，这时候系统会再给你发一封确认订购的邮件，你需登陆邮箱完成确认订购。确认完成后你用上面设置的账户进行登陆，登陆后点击右上角的 service 选项下的 My Domians。
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/04.png)  
然后选择你的那个域名，点击manage domain.  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/05.jpg)
然后点击 `manage freenom dns` 进去～  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/06.jpg)  
然后看到一片空白。
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/07.jpg)  
这时候，我们要用到我们的命令行了。 
 
### 2. 知道自己的dns
在命令行里输入以下内容：
```bash/cmd
ping 你的github用户名.github.io
```
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/08.png)
然后你会看到返回的dns，这个就是你的dns。  
  
## 03. 做域名记录值
这时，你就要做域名记录。  
按照以下图片进行做域名记录。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/09.png)  

![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/10.png)  
  
### 04. 绑定域名
转到你的github网站仓库
按照以下两种方法导入域名：  
- 1.懒人向  
在你的网站仓库右上边，找到settings点进去，然后往下拉，看见一个标题为`Github pages`，然后在该标题下面找到`costom domain`，在那个框框里输入你的域名，最后点击右边的`save`。
  
- 2.技术向  
在网站仓库的根目录里添加一个名字叫做`CNAME`的文件。**记住！不要有后缀！**，然后该文件的内容里面写上你自己的域名，最后保存文件。
  
### 05. 查看消息，就可以使用你的域名
完成以上步骤后，点击网站仓库右上边的settings*(一个懒人向的好不到哪里去的小福利)*，找到`Github page`，下面的小卡片似的东西，会标出一行蓝色的一条，意思是说正在把网站推入到你的域名里去。  
你可以通过不断刷新页面来看有没有变化。  
  
然后，你会看到那一条东西变绿了。还写着你的域名，旁边还有个钩，很高兴，你成功了。  
  
如果你看见那个条条不见了，你可能使用了别人的dns，你必须要通过`ping`你自己的github自带的域名网站来获取你自己的dns，然后记住他，看第三部分。  
  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/11.png)  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/12.png)  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/13.png)
