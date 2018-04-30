echo ""
echo ""
echo "--------------------------"
echo "push to hexo..."
echo "--------------------------"
yy=$(date +%y)
mm=$(date +%m)
dd=$(date +%d)
HH=$(date +%H)
MM=$(date +%M)
SS=$(date +%S)

xW=$(date +%U)
we=$(date +%a)
xD=$(date +%j)

git status
git add .
git commit -m "
$yy/$mm/$dd-$HH:$MM:$SS 五一放假
"

git push git@165.227.213.57:/home/git/blog.git hexo
git  log --oneline | head

echo "--------------------------"
echo "push finished..."
echo "--------------------------"
echo ""
echo ""
echo "--------------------------"
echo "deploy to master..."
echo "--------------------------"

hexo clean && hexo g -d