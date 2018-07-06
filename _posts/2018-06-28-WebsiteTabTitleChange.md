---
layout: post
title: '你的网站tab在切换到其他页面时header-title变....'
subtitle: '让标题变得funny!!'
tags: jekyll 反馈
keywords: 网站  结尾 
category: tech
cover: 'https://gitee.com/srsyrzz/repository/raw/master/blogfile/h2of/2018-06-27%2018-48-51%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png'
---
打开你的网站目录，打开你的`footer`网站结尾文件。  
然后把这行代码插在`</footer>`的上面。
```html
    <script>

        /**
         *Funny Title
        */
        var title=document.title;
        var hiddenProperty = 'hidden' in document ? 'hidden' :
            'webkitHidden' in document ? 'webkitHidden' :
                'mozHidden' in document ? 'mozHidden' :
                    null;
        var visibilityChangeEvent = hiddenProperty.replace(/hidden/i, 'visibilitychange');
        var onVisibilityChange = function(){
            if (!document[hiddenProperty]) {
                document.title = title;
            }else{
                document.title = "mc万岁! - " + title;
            }
        }
        document.addEventListener(visibilityChangeEvent, onVisibilityChange);

    </script>
``` 
其中，`document.title = "mc万岁！ - " + title;`是在tab切换后显示的标题。我这里是`mc万岁！`你可以自己修改。
保存，再上传，看看你的网站页尾发生了什么？  
![pic](https://gitee.com/srsyrzz/repository/raw/master/blogfile/h2of/2018-06-27%2018-48-51%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
