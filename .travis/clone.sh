#!/bin/bash

git clone -b master "$REPO" .deploy_git

if [ ! $? = 0 ];then
  #不存在
  echo -e "\033[32mINFO\033[0m  BRANCH NOT exist"
else
  #存在
  echo -e "\033[32mINFO\033[0m  BRANCH exist"
fi
