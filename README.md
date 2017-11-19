# 康怀帅技术博客

[![Build Status](https://travis-ci.org/khs1994/khs1994.github.io.svg?branch=hexo)](https://travis-ci.org/khs1994/khs1994.github.io)
[![Join the chat at https://gitter.im/khs1994/khs1994.github.io](https://badges.gitter.im/khs1994/khs1994.github.io.svg)](https://gitter.im/khs1994/khs1994.github.io)

* CI/CD Powered By GitHub & Travis CI

* 分离：`部署文件` 与 `博客源文件` 分离

* 功能：本地 `push` 到 `GitHub`，[`Travis CI`](.travis.yml) 开始云端生成，将 `HTML文件` 推送到 `master` 分支，使用 `Webhooks` 将信息推送到服务器，服务器开始 `fetch` `reset`，完成部署。

# 换电脑部署 Hexo

```bash
$ npm install -g hexo-cli

$ git clone -b hexo git@github.com:khs1994/khs1994.github.io.git www.khs1994

$ cd www.khs1994

$ npm install

# 生成
$ hexo g

# 推送到git
$ hexo d
```

# 配置

## 主题

* [主题无痛更新](https://www.khs1994.com/cms/hexo/themes-update.html)

```bash
$ git clone git@github.com:iissnan/hexo-theme-next.git themes/next
```

## 多仓库配置

```yaml
deploy:
  type: git
  repo:
      github: git@github.com:khs1994/khs1994.github.io.git,master
      coding: git@git.coding.net:khs1994/blog.git,master
```

# More

* [khs1994.com 全站导航](//www.khs1994.com/more)
* [xc725.wang 全站导航](//xc725.wang/more)
