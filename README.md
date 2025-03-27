# deploy

基于Docker的CI/CD流水线

## 有多个git号时

```shell
 git config --global user.email "zwz0123460218@icloud.com"
 git config --global user.name "vingur"
 git config --system --unset credential.helper
 git config --global --unset credential.helper
 git config --local --unset credential.helper
 
 git config --global credential.helper store
```

```shell
git fetch
git credential-store get
```
