---
layout: markdown-page
title: '友链'
home-title: 友情链接
header-img: https://gitee.com/srsyrzz/repository/raw/master/sunup.jpg
---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">

<style type="text/css">
      .address {
        color:#66B3FF;
        font-size:13px;
      }
    </style>
    
<li>
   <span class="tag-name" id="minecraftlink">我的世界链接</span>   
<br>
   <p><i class='fa fa-telegram'></i><a href="https://mcog.s.cn.vc">mc联机组队群</a></p>
<br>
   <p><i class='fa fa-telegram'></i><a href="https://mcpxg.weebly.com">mc玩家交流群</a></p>
<br>
   <p><i class='fa fa-telegram'></i><a href="http://minecraft.net">minecraft.net</a></p>
<br>
   <p><i class='fa fa-telegram'></i><a href="http://uipack.techplayer.org/">UIpack</a></p>
<br>
   <p><i class='fa fa-telegram'></i><a href="http://mc.whitegem.net">自定义mc成就</a></p>
<br>
</li>
<br>
<li>
   <span class='tag-name' id='technologylink'>技术好友的链接</span>
<br>
   <p><i class='fa fa-paper-plane'></i><a href="http://gloomyghost.com">GloomyGhost Blog</a></p>
<br>
   <p><i class='fa fa-paper-plane'></i><a href="https://tea9.github.io">Tea9的博客</a></p>
<br>
    <p><i class='fa fa-paper-plane'></i><a href="https://www.zhangqirun.cn">童年是个风筝的博客</a></p>
<br>
   <p><i class='fa fa-paper-plane'></i><a href='https://townwang.com'>文科中的技术宅</a></p>
</li>
<br>
<li>
   <span class='tag-name' id='other'>其他类型的链接</span>
<br>
   <p><a href="http://tour.ubuntu.com/zn-CN">ubuntu.tour</a></p>
<br>
   <p><a href="http://start.ubuntu.com">ubuntu开始导航</a></p>
</li>
    <br>
<li>
    <span class="tag-name" id="igetyourwebhere"> 让{{ site.author }}收录你的友情链接？ </span>
    如果你真的要那样的话，请确保你的网站有以下条件:<br>
    1. 你的博客或网站不能有不良信息。  <br>
    2. 网站要指向 <code>sunbossrs.github.io</code> 才行哦。<br>  
    **3. 告诉我你要加我友链。在下面的gitalk聊天室里发送如下内容，我就可以加你的友链。**  
    <address>我叫*你的网名*，我要申请添加友链。</address>
    <address>我的网站是*你的网站网址*</address>
    <address>我想让你的友链站中把我的网站写成*你想让我在我的友链站里写成的名称*</address>
    *4. 如果你的友链需要图标，可以 <a href='/https://avatars3.githubusercontent.com/u/38691765?s=96&v=4'>点击这里</a> 获得我的icon.*  
</li>
    <br>
<li>
    <span class="tag-name" id="MyFriendLinkHasBadThings"> 我这里的友链出现了不良内容？ </span>
    欢迎大家随时监督我的友链，如果你们看到我的友链里出了什么不良信息，大家可以随时反馈给我。  
    反馈方法：  
    在下面的gitalk聊天室输入内容:  
    <address>我要举报*要举报的友链名称或网址*，因为该网址有不良信息。</address>
    <address>原因：*填写原因*</address>
    <address>联系方式：*写下你的联系方式，可以是QQ账户*</address>
</li>
    <br>   
<li>
   <script src="/assets/js/SunTalk.min.js"></script>

   <div id="gitalk_container"></div>     
   <script>
    var gitalk = new Gitalk({
      clientID: '800a929ad18c8e90fdbc',
      clientSecret: '3dcb1cc3680b9b85ad4291367b4aafefd6806e58',
      repo: 'BlogCommentStore',
      owner: 'SunbossRS',
      admin: 'SunbossRS',
      id: location.pathname,     
      distractionFreeMode: 'true'  
    })
    gitalk.render('gitalk_container')
   </script>



</ul>

</main>

{% include footer.html %}
