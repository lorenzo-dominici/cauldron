FROM node:12-alpine

WORKDIR /usr/src/app

RUN apk update && apk add python2 make g++

COPY package.json /usr/src/app

RUN npm install -g node-gyp

COPY . .

RUN npm install