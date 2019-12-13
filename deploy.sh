yarn build &&
git checkout gh-pages &&
rm -r *.html *.js &&
mv dist/* ./ &&
rm -rf dist;
git add . &&
git commit -m 'update' &&
git push