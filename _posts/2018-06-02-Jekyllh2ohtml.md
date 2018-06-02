---
layout: post
title: 'h2o_jekyll主题页头html'
subtitle: '相信大家都看到了吧，我的links.html和AboutMe.html的页头是我博客的页头的。这是怎么做到的呢？来看一看吧。'
tags: 教程 jekyll
keywords: 教程 jekyll 
cover:https://gitee.com/srsyrzz/repository/raw/master/blogfile/jekyllh2ohtml/cover.h2ojekyll-html.png'
---
事不多说，现在开始。  
  
h2o这个主题的核心是由`index.html`，及其代码组成的。（简单概括就这样。）  
但是，如果你用浏览器直接打开`index.html`，不但不会成功，还会看到源代码。  
因为有`YAML头`的缘故。  
  
选择github。因为github检测`index.html`可以支持`YAML`。  
*（在开始前请务必确定你的jekyll博客是h2o模板！！）*  
我们再来看看`index.html`的内容(虽然说我也有点不明白一些内容)
  
[在线预览-耀日庄主的jekyll博客/index.html](https://raw.githubusercontent.com/SunbossRS/SunbossRS.github.io/master/index.html)
来看上面，有个`YAML`头。  
我们略过它，来看下面。  
```css
---
layout: default
home-title: h20主题
header-img: http://on2171g4d.bkt.clouddn.com/jekyll-banner.png
description: Maybe is the most beautiful of jekyll theme.
---
{% include header.html %}

<div class="g-banner home-banner {{ site.theme-color | prepend: 'banner-theme-' }}" data-theme="{{ site.theme-color }}">
    <h2>{{ page.home-title }}</h2>
    <h3>{{ page.description }}</h3>
    {% if page.header-img %}
    <img class="header-img" src="{{ page.header-img | prepend: site.baseurl }}" alt="">
    {% endif %}
</div>
```
这一系列是说：
```css
---
*忽略，你懂的~*
---
{开头html}
配置主体颜色_
以h2显示标题
以h2显示描述
{如果有header-img选项，运用上去。}
<加入header-img>
```
差不多就是这个意思。  
我们看下去，都是`post`什么之类的选项了。所以，我们copy这个代码。  
在这个h2o主题加入`xxxxxxx.html`这样一个文件。  
然后再在`_config.yml`的nav加入`xxxxxx: 'xxxxxx.html'`这样。  
打开这个`xxxxx.html`，然后吧上面的东西放到这里。  
---
空一格，然后输入你的`html代码`。  
**还没结束呢！**输完之后，空两格，在`你的那一行，第一格`，**记住！必须要是第一格！**，输入`</main>`，这样，就完成了整行代码。  
俗话说，有始有终，你前面输入了`{% include header.html %}`，那，你还得在空两行，第二行里写道`{% include footer.html %}`就成功的完成了自定义“h2o模板页面”的布置。  
---
提交到`https://github.com`就行了！

> ByeBye,Enjoy your own h2o model page~
