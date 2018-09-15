# This script file is a upload git local repository to github.
#
# Make sure this file is in '/' and than you can double-click to use this file.
#
# Make sure your bash terminal resolution must be large.
#
# Because something need a large terminal resolution.
#
# This script file is created by SunboossRS.
#
# My GitHub: https://github.com/sunbossrs
#
# My Blog: https://sunbossrs.github.io
#
# This is chinese version.
#
# Now this upload script file is default to my "workspace"file.If you want to use,plz delete "cd .." and get it into "/" .

cd ..
echo "=========="
echo "=        ="
echo "=         "
echo "=     ===="
echo "=        ="
echo "=========="

echo ""
echo ""
echo ""
echo "           Ready ?"
echo "   This script will start."
echo ""
echo ">>>>>>>"
clear

echo ""
echo ""
echo ""
echo "           Ready ?"
echo "   This script will start."
echo ""
echo ">>>>>>>>>>>"
clear

echo ""
echo ""
echo ""
echo "           Ready ?"
echo "   This script will start."
echo ""
echo ">>>>>>>>>>>>>>>>>"
clear

echo ""
echo ""
echo ""
echo "           Ready ?"
echo "   This script will start."
echo ""
echo ">>>>>>>>>>>>>>>>>>>>>>>"
clear

echo ""
echo ""
echo ""
echo "           Ready ?"
echo "   This script will start."
echo ""
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
clear

echo "startup.git.upload.app"
echo "Start pull first ..."
clear

git pull origin master
echo ""
echo ""
echo "推送云端内容完毕。"
pause
clear

echo "差不多完成了。"
echo "我们需要你提供一下更新留言，马上就可以结束。"
echo "只不过，希望你打出来的字不要有删除修改，否则，在项目里的更新留言可能会出现像 �[D 这样的字符。"
echo ""
read -p "shell.git.commit >"
clear

echo "添加文件 ..."
git add .

echo "stage文件 ..."
git stage .

echo "commit文件 ..."
git commit -a -m "${REPLY}"

clear

echo "正在做成 ..."
git status

echo "gc ..."
git gc

clear

echo "上传中 ..."
echo ""
git push
echo ""
echo ""

clear

echo "感谢使用我们的上传工具!"
echo ""
echo " TTTTTTTTTTT   H       H       AA       NN      N   K    K        U        U   "
echo "      T        H       H      A  A      N  N    N   K  K          U        U   "
echo "      T        HHHHHHHHH     AAAAAA     N   N   N   KK             U      U    "
echo "      T        H       H    A      A    N    N  N   K  K            U    U     "
echo "      T        H       H   A        A   N      NN   K    K            UU       "
echo ""

echo "请稍等 ...我们正在进行最后一次推送检验..."
git pull origin master

clear

echo "运行完毕！关掉进程中 ..."

echo ">>"
clear

echo ">>>>>"
clear

echo ">>>>>>>>>>>>"
clear

echo ">>>>>>>>>>>>>>>"
clear

echo ">>>>>>>>>>>>>>>>>>>>"
clear

echo ">>>>>>>>>>>>>>>>>>>>>>>"
clear

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>"
clear
