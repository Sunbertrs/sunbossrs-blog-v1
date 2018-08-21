**********************************************************************************
* This script file is a upload git local repository to github.                   *
*                                                                                *
* Make sure this file is in '/' and than you can double-click to use this file.  *
*                                                                                *
* Make sure your bash terminal resolution must be large.                         *
*                                                                                *
* Because something need a large terminal resolution.                            *
*                                                                                *
* This script file is created by SunboossRS.                                     *
*                                                                                *
* My GitHub: https://github.com/sunbossrs                                        *
*                                                                                *
* My Blog: https://sunbossrs.github.io                                           *
*                                                                                *
* This is chinese version.                                                       *
**********************************************************************************

clear

echo "+-----------------------------------------------------+"
echo "|                 Git工具的上传脚本                   |"
echo "+-----------------------------------------------------+"
echo "| 这个脚本可以让你上传文件变得容易.                   |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"

git status
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"

clear
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
git pull origin master

echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
clear

echo "+-----------------------------------------------------+"
echo "|                   请输入更改留言。                  |"
echo "+-----------------------------------------------------+"
read -p "--> "

echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
git add .
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
git stage .
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
git commit -a -m "${REPLY}"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"

clear

echo "|                                                     |"
echo "|                 更改留言设置成功!                   |"

clear

echo "|                   已准备就绪。                      |"
echo "|                                                     |"
echo "|                       查看状态...                   |"
echo "|                                                     |"
clear

echo "|                                                     |"
echo "|                                                     |"
git status
echo "|                                                     |"
echo "|                                                     |"
git gc
echo "|                                                     |"
echo "|                                                     |"
git push
echo "|                                                     |"
echo "|                                                     |"
clear

echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "|                                                     |"
echo "+-----------------------------------------------------+"
echo "|                  上传到仓库成功!                    |"
echo "+-----------------------------------------------------+"

git gc

clear

clear

echo ""
echo "Thanks for using this upload tool!"
echo ""
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