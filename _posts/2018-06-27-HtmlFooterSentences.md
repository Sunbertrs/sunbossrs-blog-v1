---
layout: post
title: '如何让你的博客/普通的网站结尾显示名言警句'
description: '源是LWL12的！'
tags: jekyll 反馈 网站
keywords: 网站 名言警句 结尾 
category: tech
cover: 
---
打开你的网站目录，打开你的`footer.html`网站结尾文件。  
然后把这行代码插在`/section`的下面。
```html
    <p>
      <script type="text/javascript" src="https://api.lwl12.com/hitokoto/main/get?encode=js&charset=utf-8"></script><div id="lwlhitokoto"><script>lwlhitokoto()</script></div>
    </p>
```
保存，再上传，看看你的网站页尾发生了什么？
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/h2of/2018-06-27%2018-21-37%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
