git config --global user.email "yaorizhuangzhu@163.com"
git config --global user.name "SunbossRS"

echo "----------------------------"
echo "------git上传仓库脚本-------"
echo "----------------------------"
echo ""
echo "Made by SunbossRS"
echo ""
echo "This product can help you upload the file easier."
 
clear

echo "运行内容概括"
echo "1. 检测修改的内容"
echo "2. 同步仓库＆合并修改"
echo "3. 输入更改留言"
echo "4. 更新到仓库"
echo ""
echo "Thank you to use this product!"
echo ""
echo ""
echo ""
echo ""

clear

git status

clear

git pull origin master

clear

echo "你的更改已成功。"
echo "----------------"
echo "请输入更改留言。"
echo ""
echo ""
read -p ">"

git add .
git stage .
git commit -a -m  "${REPLY}"

clear

echo "更改留言设置成功!"

clear

echo "已准备就绪。"

echo "查看状态"

clear

git status

git gc

clear

git push
git config --global user.email "yaorizhuangzhu@163.com"
git config --global user.name "SunbossRS"

clear

echo "上传到仓库成功!"

echo "...."
git gc

clear

echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "close"

