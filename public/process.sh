couscous clear
couscous generate
rm -rf .couscous/generated/public/
cp -r .couscous/generated/* public/
git add public/*
git add README.md
git commit -m "Updated docs"
git push
