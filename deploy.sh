yarn build &&
git checkout gh-pages &&
rm -r *.html *.js *.css *.png *.sh &&
mv dist/* ./ &&
rm -r dist;
git add . &&
git commit -m 'update' &&
git push