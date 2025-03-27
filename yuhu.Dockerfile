FROM golang:1.18

#设置环境变量###################
ENV PATH=$PATH:/usr/local/go/bin:/go/bin
ENV GO111MODULE="on"
ENV GOPRIVATE="github.com/astra-x/*,github.com/yuhu-tech/*,go.etcd.io/*,chainmaker.org"

#安装工具######################
RUN apt-get update
RUN apt-get install -y libvips libvips-dev
RUN apt-get install -y npm
RUN npm install pm2 -g

#安装插件########################
# RUN go install -v golang.org/x/tools/gopls@latest

CMD tail -f /dev/null
