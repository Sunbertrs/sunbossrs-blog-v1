clear

echo "Git工具的上传脚本"
echo "这个脚本可以让你上传文件变得容易."
echo ""
echo ""
echo ""

git status

clear

git pull origin master

clear

echo "请输入更改留言。"
echo ""
read -p "--> "

git add .
git stage .
git commit -a -m "${REPLY}"

clear

echo "更改留言设置成功!"

clear

echo " -> 已准备就绪。"
echo ""
echo " -> 查看状态..."

clear

git status

git gc

git push

clear

echo "上传到仓库成功!"

git gc

clear

echo ""
echo "Thanks for using this upload tool!"
echo "+-------------------------------------------------------------------------------+"
echo "| TTTTTTTTTTT   H       H       AA       NN      N    K    K       U        U   |"
echo "|      T        H       H      A  A      N  N    N    K  K         U        U   |"
echo "|      T        HHHHHHHHH     AAAAAA     N   N   N    KK            U      U    |"
echo "|      T        H       H    A      A    N    N  N    K  K           U    U     |"
echo "|      T        H       H   A        A   N      NN    K    K           UU       |"
echo "+-------------------------------------------------------------------------------+"

clear

git gc
git stage .
git pull origin master

clear

echo "Bye."