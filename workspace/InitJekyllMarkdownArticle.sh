# !/bin/bash
# This file is default to MY "workspace" folder.
# If you want,you can delete "cd .." and put it to "/" .
# https://github.com/sunbossrs

cd ..
cd _posts
clear

echo "欢迎来到Init Jekyll Markdown Article服务！"
echo "在这里我们会利用你弄出来的本地网页仓库进行运作."
echo ""
echo ""
echo ""
echo "输入你的文章名称"
echo ""
echo "只要写名字！"
echo ""
echo ""
read -p "你的输入>"

clear

echo "成功定位到[_post]，请等待..."
echo ""
echo ""
echo "请稍等...我们正在创建文章..."

clear

echo "---">"$REPLY.md"
echo "layout: post">"$REPLY.md"
echo "title: '' ">"$REPLY.md"
echo "subtitle: '' ">"$REPLY.md"
echo "tags: '' '' ">"$REPLY.md"
echo "category: '' ">"$REPLY.md"
echo "keyword: '' ">"$REPLY.md"
echo "title: '' ">"$REPLY.md"
echo "cover: '' ">"$REPLY.md"

echo "">"$REPLY.md"
echo "由InitJekyllMarkdownArticle创建的文件已经创建完成!"
echo ""
echo ""
echo "自动添加文本Created by InitJekyllMarkdownArticle。"
echo ""
echo ""
echo "正在打开编辑器 ..."
echo ""
start .\"$REPLY.md"
./"$REPLY.md"
