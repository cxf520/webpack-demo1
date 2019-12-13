yarn build &&
git checkout gh-pages &&
rm -rf *.html *.js *.css *.png yarn.lock *.json *.sh &&
mv dist/* ./ &&
rm -r dist;
git add . &&
git commit -m 'update1' &&
git push