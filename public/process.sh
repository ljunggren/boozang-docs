couscous clear
couscous generate
rm -rf .couscous/generated/public/
cp -r .couscous/generated/* public/
git add public/*
git add images/*
git add cn/images/*
git add README.md
git add cn/README.md
git commit -m "Updated docs"
git push

ssh centos@bld1be.boozang.com  'scripts/update-docs.sh'
