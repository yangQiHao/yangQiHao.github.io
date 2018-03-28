echo "hello"
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
$yy/$mm/$dd-$HH:$MM:$SS blog源文件托管到hexo分支
"
git push origin hexo
git  log --oneline | head

echo "=================================="

hexo clean && hexo g -d