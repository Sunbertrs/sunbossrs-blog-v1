---
layout: post
title: 'h2o主题页头+自定义html代码设置'
subtitle: '相信大家都看到了吧，我的links.html和AboutMe.html的页头是我博客的页头的。这是怎么做到的呢？来看一看吧.'
tags: jekyll 教程 网站
category: tech
keywords: 教程 jekyll
cover: 'https://m.gitee.com/srsyrzz/repository/raw/master/blogfile/jekyllh2ohtml/cover.h2ojekyll-html.png'
---
事不多说，现在开始。  
 
### 写在前面
h2o这个主题的核心是由`index.html`，及其代码组成的。（简单概括就这样。）  
但是，如果你用浏览器直接打开`index.html`，不会成功.（没有顾全代码？）  
因为有`YAML头`的缘故。  
  
*（在开始前请务必确定你的jekyll博客是h2o模板！！）*  
我们再来看看`index.html`的内容(虽然说我也有点不明白一些内容)
  
### 1.配置页面
**(你要看看你的！我这里的是示范）**
[在线预览-耀日庄主的jekyll博客/index.html](https://raw.githubusercontent.com/SunbossRS/SunbossRS.github.io/master/index.html)  
来看上面，有个`YAML`头。  
我们略过它，来看下面:  
![avatar](https://gitee.com/srsyrzz/repository/raw/master/blogfile/jekyllh2ohtml/Screenshot_20180603_152339.png)
这一系列是说`配置主体颜色_，以h2显示标题，以h2显示描述，{如果有header-img选项，运用上去。}，<加入header-img>`的意思。  
我们copy这个代码。  

### 2.加入页面&加入页面导航
在这个h2o主题加入`{你想要的页头名称}.html`这样一个文件。  
然后在`_config.yml`的`nav:`里加入`*填写你的页面英文名称*: '{你想要的页头名称，要是英文｝: /{那个html文档}.html。`  

### 3.写代码
打开你的那个html,然后把刚才说的代码复制进来.  
然后空一格,输入你的自定义html代码.  
输入完后,空两行,**在那一行的第一格,记住!第一格**输入以下内容(其实就是复制粘贴而已....)
```html
</main>

{ % include footer.html % }
```
保存! 
### 4.上传到github
  
### 5.打开你的网站.
