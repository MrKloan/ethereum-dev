FROM node:alpine
MAINTAINER Valentin Fries <contact@fries.io>

ENV USER=root

RUN apk add --update g++ make git python go wget &&\
    npm i -g --unsafe-perm ethereumjs-testrpc truffle &&\
    wget https://dist.ipfs.io/go-ipfs/v0.4.7/go-ipfs_v0.4.7_linux-386.tar.gz &&\
    tar xvzf go-ipfs_v0.4.7_linux-386.tar.gz &&\
    mv go-ipfs/ipfs /usr/local/bin/ipfs &&\
    rm -rf go-ipfs* &&\
    rm -rf /var/cache/apk/* &&\
    mkdir /src

EXPOSE 8545 4001 5001 8080

WORKDIR /src
