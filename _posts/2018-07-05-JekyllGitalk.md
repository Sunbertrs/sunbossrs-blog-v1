---
layout: post
title: '在jekyll博客里设置gitalk评论系统'
subtitle: '转载自tea9.'
tags: jekyll 反馈
category: tech
---
**转自：https://tea9.xyz/2018/06/24/gitali_config.html**  
**文章内容略有修改，请知悉!**

大家好。今天来给大家介绍一款评论软件，它叫做[gitalk](https://gitalk.github.io)。  
你猜我怎么着？这个评论软件不需要下载到电脑，然后把它的附带文件拷贝到仓库，也不用怎么样。  
这个东西要怎么弄呢？  
  
这其实是一个对于博客的评论系统。  
可以说是很厉害了。  
  
只要网上一搜[gitalk](https://gitalk.github.io)，立刻会出现一大堆链接。都说gitalk的。  
在网上看到一篇hexo使用[gitalk](https://gitalk.github.io)，其实，[jekyll](https://jekyllrb.com)的话和这个的设置差不多。  
  
*开始教程*
---
### 01.注册GitHub Application
注册GitHub OAuth Application
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/01.png)  
```github
 Application name:项目名称  
 Homepage URL:域名地址  
 Application description:项目描述  
 Authorization callback URL:回掉地址  
```
注册成功后会获得Client ID和Client Secret
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/02.png)

### 02.配置_config.yml
在_config.yml这个文件里添加以下内容:
 <pre>
   <code class="language-yaml">
 gitalk: true
 gitalk_clientID: '你刚刚注册一个oauth application的clientID'
 gitalk_Secret: 'oauth application的secret'
 gitalk_repo: '用户名.github.io或者是一个存放评论的仓库'
 gitalk_owner: 'github用户名'
 gitalk_admin: 'github用户名'
 distractionFreeMode: true
  </code>
</pre>
。。至于我这里的distrationfreemode，你们怎样弄都可以，只要true和false
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/03.png)  
记住，要把disqus开启。  
### 03.修改post.html
打开网站根目录的post.html，在html的下面添加以下内容:
