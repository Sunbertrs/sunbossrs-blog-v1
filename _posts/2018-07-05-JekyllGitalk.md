---
layout: post
title: '在jekyll博客里设置gitalk评论系统'
subtitle: '转载自tea9.'
tags: jekyll 反馈
category: tech
---
**转自[tea9博客的gitalk教程](https://tea9.xyz/2018/06/24/gitali_config.html)**  
**文章内容略有修改，请知悉!**

### 前言
大家好。今天来给大家介绍一款评论软件，它叫做[gitalk](https://gitalk.github.io)。  
这个评论软件基于github的issue。因为issue轻量化，所以作者采用issue进行收集数据。  
这个东西要怎么弄呢？有一定网站技术的人员一定知道，只需要引入css文件和js就可以了。  
但是，我们要外加上我们的github。  
确保你的自建代码网站是在github创建的。  
如果是在coding.net或者是gitee(码云)的话，要记得打开issue功能。
这一个对于博客的评论系统，可以说是很厉害了。  
  
只要网上一搜[gitalk](https://gitalk.github.io)，立刻会出现一大堆链接。都说gitalk的。  
在网上看到一篇hexo使用[gitalk](https://gitalk.github.io)，其实，[jekyll](https://jekyllrb.com)的话和这个的设置差不多。  
  
*开始教程*
---
### 01.注册GitHub Application
注册GitHub OAuth Application  
注册方法：在github主页右上角点击你的头像，settings，进入界面后点击developer settings,添加OAuth Application。  
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/01.png)  
```github
 Application name:取一个霸气的名称 
 Homepage URL:你的博客网址
 Application description:项目描述  
 Authorization callback URL:你的博容网址
```
注册成功后会获得Client ID和Client Secret（不要想着占用tea9的github application!!）  
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/02.png)

### 02.配置_config.yml
在_config.yml这个文件里添加以下内容:
<pre>
  <code class="language-yaml">
comments: true

comments:
  gitalk: true
  gitalk_clientID: '你刚刚注册一个oauth application的clientID'
  gitalk_Secret: 'oauth application的secret'
  gitalk_repo: '用户名.github.io或者是一个存放评论的仓库'
  gitalk_owner: 'github用户名'
  gitalk_admin: 'github用户名'
  distractionFreeMode: false
  </code>
</pre>
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/03.png)  
*由于这里我用的是jekyll的H2O主题，内置了disqus，我们会看到。没有H2O主题的可以装上去 或者在_config.yml里加上 上面的字段。*

### 03.修改post.html
打开网站根目录的`post.html`，这个文件一般在`_layouts`文件夹。在该文件里的`<html>`下面 添加以下内容:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
```

然后往下翻 或者搜索字段`<section class="post-footer-item comment">`找到他。  
如果没有，其实位置就在'最后一篇博文'的显示位置下方。  
请在`{ % if page.previous.url % }`的`{ % endif % }`下面的`</section>`里换行，然后输入`<section class="post-footer-item comment">`。  
  
继续。找到`<section class="post-footer-item comment">`后，在该文段下面添加以下字符：
```html
<div id="disqus_thread"></div> //如果你的主题自带disqus，请省略该行，直接把下面这一行的内容添加进去。
<div id="gitalk_container"></div>
```
添加完之后呢，
我们先了解一下几个大括号表达式：
意思所指。  
![pic]({{ site.imgbed }}/img/JekyllGitalk/01.png)
site代表_config.yml  
comment代表在列comment里的项(在'comment:'后面按了两个空格后输入的内容为comment的项,之后隔一行后不再按两个空格'对齐一起'可退出该项)  
至于这些gitalk_xxx的，我刚才写的。  
在快要接近结尾的地方，**不要是</body>，也不要是</html>的地方，是在快要接近</body>的地方里**，添加以下字段：
```post.html

  {% if site.comments.gitalk %}
  <script>
    var gitalk = new Gitalk({
      clientID: '输入clientid表达式',
      clientSecret: '输入secret表达式',
      repo: '输入gitalk repo表达式',
      owner: '输入gitalk owner表达式',
      admin: '输入gitalk admin表达式',
      id: location.pathname,     
      distractionFreeMode: '输入distractionFreeMode表达式'  
    })
    gitalk.render('gitalk_container')
  </script>
{% endif %}

```

由于前面我们在 `_config.yml` 里输入过gitalk注册的消息，这里直接用*大括号表达式*.就是这么懒~  
  
接下来，输入以下内容：
```html
// 确保是在{ %  include footer.html  % }下面

<script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>
```

就完事了~  
*感谢@tea9的支持和他在他的文章评论里发给我的修改内容*
