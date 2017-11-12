#!/bin/bash

DOCS_REPO=https://github.com/khs1994-website/docs.git
PHP_DOCS_REPO=https://github.com/khs1994-website/php-docs.git
REPO=https://github.com/khs1994/khs1994.github.io.git

if [ "$1" = "git" ];then
  git ls-files | while read file; do touch -d $(git log -1 --format="@%ct" "$file") "$file"; done
  git clone -b master "$REPO" .deploy_git
  if [ ! $? = 0 ];then echo -e "\033[32mINFO\033[0m  BRANCH NOT exist"; else echo -e "\033[32mINFO\033[0m  BRANCH exist"; fi
  git clone -b gitbook --depth=1 "$DOCS_REPO" source/_posts
  cd source/_posts
  mv img ../
  git ls-files | while read file; do touch -d $(git log -1 --format="@%ct" "$file") "$file"; done
  rm -rf php
  git clone -b gitbook --depth=1 "$PHP_DOCS_REPO" php
  cd php
  git ls-files | while read file; do touch -d $(git log -1 --format="@%ct" "$file") "$file"; done
  exit 0
fi

rm -rf source/_posts ; mkdir source/_posts

echo -e "\033[32mINFO\033[0m  Copy post source..."

cp -a  ../docs/* source/_posts/
cp -a source/_posts/img source/img/
cd source/_posts
rm -rf _book node_modules .DS_Store *.json *.md .deploy_git

echo -e "\033[32mINFO\033[0m  Remove php folder[$PWD/php]"

rm -rf php/*
cp -a -p ../../../php-docs/* php/

echo -e "\033[32mINFO\033[0m  Success move php-source TO [$PWD/php]"

cd php
rm -rf _book node_modules .DS_Store *.json *.md .deploy_git
cd ../../
echo
hexo clean
