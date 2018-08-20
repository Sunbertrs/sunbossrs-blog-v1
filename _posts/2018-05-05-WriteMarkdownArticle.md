---
layout: post
title: '正确的写一篇markdown博文'
subtitle: '只要你努力，markdown就会学会。'
date: 2018-05-05
tags: MarkDown
category: tech
cover: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/lovely-photo/SteveGet.jpeg'
keywords: markdown 教程
---

大家好，这里是第一篇博文。今天我们来教大家如何写一篇博文。  
  
因为我这里用的是jekyll创建的博客，它可以支持用markdown写博文，所以我就在这里写教你们写博文。  
  
写一篇md博文要有好的编辑器，如果你内存不够，你可以用系统自带的记事本。对于萌新来说，可以使用markdown的编辑器。 
   
> Windows用户可以用markdown pad或者markpad。  
> Linux用户可以用vim或者nano，麻烦的话你自己看着办。  
> Android用户可以用MarkdownX或者其他。    
  
当我们拥有了编辑器，就可以开始了(废话)  
  
本地仓库的_post文件夹里面放了你的所有博文。我们会看到有一个2018-04-08-Hello-World.md的文件。  
  
所以我们写一篇博文，要按照`年-月-日-标题(要空格的用-代替).md`进行命题。  
  

### 段落

这个文档自身就是使用 Markdown 编写的。  
Markdown 允许你通过编写易读、易写的富文本格式，然后很方便就可以转换成有效的 HTML。  
这语法很简单，你直接在上面写一段字就是一段文本。   
并且，markdown基于html。

### 标题(尾部的 # 是可选的)
```
# 标题 1 #

## 标题 2 ##
```
因为markdown基于html，所以一共有六级标题：
```
# 标题 

## 标题
 
### 标题 

#### 标题 

##### 标题
 
###### 标题 

```

### 强调或突出
```
这里有几种方法来表达所要表达的意思。

*突出*   **强调**
_突出_   __强调__
```
### 链接

内联风格 (title 是可选的):
```css
[MarkdownX 官方网站](http://markdownx.ryeeeeee.com/ "Title")
```
内联风格 (title 是可选的):
```
[MarkdownX 官方网站][id]。 之后，可以在文档的其他任意地方, 定义这个链接:

[id]: http://markdownx.ryeeeeee.com/  "Title"
```
### Email
```
作者的 email <spatblan@gmail.com> 链接.
```
### 图片

内联风格 (title 是可选的):
```css
![定义-图片名称](/path/img.jpg "标题")
```
引用风格 (title 是可选的):
```
![定义-图片名称][id]

[id]: /url/to/img.jpg "标题"
```

### 列表

有序列表:
```
1. 列表项 1
2. 列表项 2
```  
也就是在前面加上序号  
  

无序列表:
```
* 列表项 1
* 列表项 2

- 列表项 3
- 列表项 4
```
列表项缩进两个空格就可以创建一个嵌套的列表：
```
1. 列表项 1
  1. 嵌套的列表可以是有序的
  2. 格式和正常的有序、无序列表没有差异
2. 列表项 2
  * 嵌套的列表可以是无序的
    * 这个嵌套的列表项有4个空格的缩进，因为它的父列表项自身就带有2个空格的缩进
    * 还允许更多层的嵌套
3. 列表项 3
```
### 引用
```
> 段落前面添加大于号和空格，就能够形成引用段落。

> > 这是嵌套的引用....
```
### 内联代码

`内联代码` 使用反引号包含

你也可以像 `` `这样` `` 转义反引号

### 代码块

每行缩进4个空格或者1个 tab：  
  
这是一个正常的段落。  

```
这是代码块。
```
### 水平分割线

三个或更多的星号或横杠：
```
---
```

```
* * *
```

```
******
```

```
- - - -
```

### 强制换行

在行尾输入两个空格.

### GitHub发行的markdown
***
链接自动展示

你可以直接输入链接地址，它可以直接识别这个链接。
```css
http://markdownx.ryeeeeee.com
```
### 删除线

通过两个波浪号将字符包含：
```css
~~错误的文本~~
```
### 围栏式代码块

标准的 Markdown 通过每行开头的4个空格将文本转换成代码块，而 GFM 支持围栏式代码块。只要将代码用
包含起来即可，不需要4个空格的缩进

### 表格

这是个简单的表格:
```
First Header | Second Header | Third Header
------------ | ------------- | ------------
Content Cell | Content Cell  | Content Cell
Content Cell | Content Cell  | Content Cell
```
出于美观的考虑, 可以把两端都包围起来:
```
| First Header | Second Header | Third Header |
| ------------ | ------------- | ------------ |
| Content Cell | Content Cell  | Content Cell |
| Content Cell | Content Cell  | Content Cell |
```
通过在标题分割行添加冒号 : ,你可以定义表格单元的对其格式：向左靠齐，居中和向右靠齐：
```
First Header | Second Header | Third Header
:----------- | :-----------: | -----------:
Left         | Center        | Right
Left         | Center        | Right
```
***
一般写jekyll markdown文章的开头是这样的:

```
---
layout: post
title: 文章标题
subtitle: 可选，副标题
tags: 标签。使用一个空格来命为另一个标签。
category: 归档
cover: 可选。这是背景
keywords: 关键字。使用一个空格来命为另一个关键字。
---
```
记住，在一个选项冒号的后边要空一格。   
  
现在就讲到这么多了，快去写一篇你的md博文吧！
