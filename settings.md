# 主题

```bash
$ git clone git@github.com:iissnan/hexo-theme-next.git themes/next
```

# 部署

```bash
# 生成
$ hexo g

# 推送到git
$ hexo d
```

# 多仓库配置

```yaml
deploy:
  type: git
  repo:
      github: git@github.com:khs1994/khs1994.github.io.git,master
      coding: git@git.coding.net:khs1994/blog.git,master
```
