mkdir .tmp
cd .tmp
curl -o flarum.zip --remote-name --location https://github.com/askvortsov1/flarum-one-click/releases/latest/download/release-bazaar.zip
unzip flarum.zip -d flarum
cd ..
mv .tmp/flarum/* .
rm -rf .tmp