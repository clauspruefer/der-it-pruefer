#!/usr/bin/bash

for file in $(find ~/repos/jekyll-theme-textalic/_site -iname "*.html");
do
    echo ${file}
    sed -i 's/<\/head>/<\/head><!-- Google tag (gtag.js) --><script async src="https:\/\/www.googletagmanager.com\/gtag\/js?id=G-XQXP7DHZNB"><\/script><script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'G-XQXP7DHZNB');<\/script>/g' ${file}
done
