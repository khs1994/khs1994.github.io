#!/usr/bin/env bash

cd themes
rm -rf next/.git _config.yml
# 备份配置文件
cp next/_config.yml .
# 恢复默认配置文件
mv _config.yml.default next/_config.yml
cd next
if [ ! -f "git.tar.gz" ];then
  echo -e "\033[32mINFO\033[0m  git.tar.gz NOT existe"
  #git.tar.gz不存在
  git init
  git remote add origin git@github.com:theme-next/hexo-theme-next.git
  git add .
  #git commit -m "first"
else
echo -e "\033[32mINFO\033[0m  git.tar.gz existe"
tar -zxf git.tar.gz
fi
echo -e "\033[32mINFO\033[0m  ALL branch: "
echo
git branch -av
#git add .
#git commit -m "first"
echo -e "\033[32mINFO\033[0m  fetch origin..."
# 读取远程
git fetch origin master --depth=1
echo -e "\033[32mINFO\033[0m  fetch reset..."
# 强制覆盖
git reset --hard origin/master
# 备份默认配置文件
mv _config.yml ../_config.yml.default
# 恢复配置文件
cp ../_config.yml .
# 打包 .git
tar -zcf git.tar.gz .git
echo -e "\033[32mINFO\033[0m  rm .git folder..."
rm -rf .git
