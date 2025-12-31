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

```shell
docker system prune -a
```

## redis集群

```shell
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' deploy-redis-node1-1
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' deploy-redis-node2-1
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' deploy-redis-node3-1

redis-cli --cluster create \
127.0.0.1:7001 \
127.0.0.1:7002 \
127.0.0.1:7003 \
--cluster-replicas 0
```
