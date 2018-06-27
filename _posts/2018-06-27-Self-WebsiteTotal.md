---
layout: post
title: '如何让你的博客/普通的网站结尾显示网站查看人数统计'
description: '谢谢dn-lbstatics.qbox.me！'
tags: jekyll 反馈
keywords: 网站 统计 结尾 
category: tech
cover: 'https://gitee.com/srsyrzz/repository/raw/master/blogfile/h2of/2018-06-27%2018-21-37%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png'
---
打开你的网站目录，打开你的`footer.html`网站结尾文件。  
然后把这行代码插在`/section`的下面。
```css
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
但是，这次的比较麻烦。。。  
请点击这个按钮，下载文件（svg文件。）
 <table>
   <tr>
     <td><a href='https://gitee.com/srsyrzz/repository/raw/master/blogfile/h2of/wangzhantongji.svg.zip'>点击这里</a></td>
   </tr>
 </table>
解压后看见assets文件夹。  
把assets文件夹放到网站的目录下。  
  
保存，再上传，看看你的网站页尾发生了什么？  
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/h2of/2018-06-27%2018-21-37%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
```css
小人是总点击人数
眼睛是总点击量
文本图标是本页面点击人数
```
