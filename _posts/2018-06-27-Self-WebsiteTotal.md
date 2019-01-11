---
layout: post
title: '如何让你的博客/普通的网站结尾显示网站查看人数统计'
description: '谢谢<i>不蒜子</i>！'
tags: jekyll 反馈
keywords: 网站 统计 结尾 
category: tech
cover: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/WebsiteShow/01.png'
---
**请注意！我曾在2018年的6月27日发过一个教程，也是讲这个的。可惜，链接不管用了。**  
**特此告示。**  
  
首先，打开你的网站目录*Jekyll*，打开你的`footer.html`网站结尾文件。  
`footer.html`是在`/_includes`目录下的。有的可能是`footer.php`或者是`footer.esp`。这里是`jekyll`，用的是`footer.html`。  
打开`footer.html`后，把这行代码插在*Build on Jekyll | Theme xxx*文字的下面。  

**再次提醒，原来的已经不行了。原来的代码如下**
```html

    <p>
    <div class="busuanzi-count">
      <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
      <span class="site-uv" title="总点击人数">
					<img src="/assets/vendor/octicons/svg/person.svg" width="10" height="16">
			<span class="busuanzi-value" id="busuanzi_value_site_uv"></span></span>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <span class="site-pv" title="总点击量">
					<img src="/assets/vendor/octicons/svg/eye.svg" width="16" height="16">
			<span class="busuanzi-value" id="busuanzi_value_site_pv"></span></span>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <span class="page-pv"title="本页面点击人数">
					<img src="/assets/vendor/octicons/svg/file-text.svg" width="12" height="16">
			<span class="busuanzi-value" id="busuanzi_value_page_pv"></span></span>
    </div>
    </p>
```
现在，你必须把域名指向`busuanzi.ibruce.info`而不是`dn-lbstatics.qbox.me`。  
另外，庄主我重新简化了代码。
代码如下。
```html
    <!-- 网站计数器 -->
    <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    <span id="site_pv_count" title="总点击量"><img src="/assets/vendor/octicons/svg/eye.svg" width=16 height=16> <span id="busuanzi_value_site_pv"></span></span> &nbsp; &nbsp; | &nbsp; &nbsp; <span id="site_uv_count" title="总访客量"> <img src="/assets/vendor/octicons/svg/person.svg" width=10 height=16> <span id="busuanzi_value_site_uv"></span></span>
    <!-- 到此为止 -->
```
这里比较麻烦。。。因为~~爱情~~指定了文件。  
请点击这个按钮，下载文件（svg包。）
<a class="btn" href='https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/filedown/Wangzhantongji_svg.zip'>点击这里</a></button>
解压后看见assets文件夹。  
把assets文件夹放到网站的目录下。  
  
保存，再上传，看看你的网站页尾发生了什么？  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/WebsiteShow/01.png)
```default
小人是总点击人数
眼睛是总点击量
```
