git config --global user.email "yaorizhuangzhu@163.com"
git config --global user.name "SunbossRS"
git status

echo ""
echo "pulling..."

git push origin master 

git status

echo ""
read -p "Enter commit message:"

git add .
git stage *
git commit -a -m "${REPLY}"

git status

echo ""
echo "commit finished"

git gc
git push origin master

echo "hia hia I have finished"
