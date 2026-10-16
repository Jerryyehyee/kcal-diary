#!/bin/sh
# Wrap kcal-diary.html (the Claude artifact source) into a standalone index.html for GitHub Pages.
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="zh-Hant">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<meta name="apple-mobile-web-app-capable" content="yes">' \
    '<meta name="apple-mobile-web-app-title" content="熱量手帳">' \
    '<meta name="theme-color" content="#1f6f5c">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat kcal-diary.html
  printf '%s\n' '</body>' '</html>'
} > index.html
echo "built index.html"
