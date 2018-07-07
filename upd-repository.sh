git config --global user.email "yaorizhuangzhu@163.com"
git config --global user.name "740291272"

git status

echo "Update the repository ... (We won't clear the edit you do it.)"

git pull origin master

git status
echo "---------------------------"
echo "This is the information."

clear

echo "Your edit is success to read.We will update it in repository."
echo ""
echo "Type your commit message in the down."
echo ""
read -p "The update commit message is:"

rm *~
rm **/*~
rm **/**/*~

git add .
git stage .
git commit -a -m  "${REPLY}"

echo "Success to commit!"
echo ""
echo "Let's see the status!"

clear

git status

git gc

clear

git push

clear

echo "Success to push!"

clear 

echo "Go exit~"

exit