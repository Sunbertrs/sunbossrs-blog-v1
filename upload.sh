git config --global user.email "yaorizhuangzhu@163.com"
git config --global user.name "SunbossRS"

clear

git status
echo "请稍后."


echo "更新仓库..."

clear
git pull origin master

clear

git status

echo "你的更改已成功。我们将会上传到仓库。"
echo ""
echo "输入更改留言在下方。"
echo ""
echo "更改的留言是"
echo ""
read -p "->"

git add .
git stage .
git commit -a -m  "${REPLY}"

echo "更改留言设置成功!"
echo ""
echo "查看核实信息!"

clear

git status

git gc

clear

git push

clear

echo "上传到仓库成功!"

clear 

echo ""
git gc

clear

