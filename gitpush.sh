git config --global user.email "yaorizhuangzhu@163.com"
git config --global user.name "SunbossRS"

clear

echo 'Now I will add the no exist files ...'
git add .
echo 'Add successful!'

clear

echo ""
read -p "Enter commit message:"


echo Now I will push the files to Github ...
git commit -a -m "$REPLY"

echo Push successful!

cls

echo Let's see the status.
git status

echo Now you can browse your blog website:sunbossrs.github.io

echo You are finish the upload files.Goodbye~

exit
