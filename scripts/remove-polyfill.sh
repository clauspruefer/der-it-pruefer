#!/usr/bin/bash

for file in $(find ~/repos/jekyll-theme-textalic/_site -iname "*.html" | xargs egrep polyfill -l);
do
    echo ${file}
    sed -i 's/<script src="https:\/\/polyfill.io\/v3\/polyfill.min.js?features=es6"><\/script>//g' ${file}
done
