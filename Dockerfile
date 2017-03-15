FROM node:alpine
MAINTAINER Valentin Fries <contact@fries.io>

ENV USER=root

RUN apk add --update g++ make git python &&\
    npm i -g --unsafe-perm ethereumjs-testrpc truffle &&\
    rm -rf /var/cache/apk/* &&\
    mkdir /src

EXPOSE 8545

WORKDIR /src
