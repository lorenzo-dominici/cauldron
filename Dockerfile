FROM node:12-alpine

WORKDIR /usr/src/app

RUN apk update && apk add python3 make g++

RUN npm install -g node-gyp

COPY . .

RUN npm install