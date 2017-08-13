# Hexo 持续部署

[![Build Status](https://travis-ci.org/khs1994/khs1994.github.io.svg?branch=source)](https://travis-ci.org/khs1994/khs1994.github.io)

# 持续集成(Continuous integration) / 持续部署(Continuous deployment)

## Powered By GitHub & Travis CI


* 分离：`部署文件`与`博客源文件`分离
* 功能：本地`push`到`GitHub`,`Travis CI`开始云端生成，将`HTML文件`推送到`master`分支，使用`Webhooks`将信息推送到服务器，服务器开始`pull`,完成部署。
* 查看[.travis.yml](.travis.yml)

# 换电脑部署 Hexo

```bash
$ npm install -g hexo-cli

$ git clone -b source git@github.com:khs1994/khs1994.github.io.git hexo
$ cd hexo
$ npm install
```

# 配置

阅读[settings.md](settings.md)文件。或[Wiki](https://github.com/khs1994/khs1994.github.io/wiki)
