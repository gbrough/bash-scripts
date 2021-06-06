#!/bin/bash
#week = $1
#project = $2
dir=~/Documents/Epicodus/$1/$2/
scripts=~/Documents/Epicodus/scripts/

mkdir $dir 
mkdir $dir/css $dir/js
cp $scripts/bootstrap.css $dir/css/
cp $scripts/jquery-3.6.0.js $dir/js/
touch $dir/index.html $dir/README.md $dir/css/styles.css $dir/js/scripts.js
cd $dir
git init
git add .
git remote add gb https://github.com/gbrough/$2
git commit -m "create intial project index readme css and js files"
git push gb main
