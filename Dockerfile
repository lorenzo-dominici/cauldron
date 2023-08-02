FROM node:20-alpine

WORKDIR /usr/src/app

RUN apk update && apk add python3 make g++

RUN npm install -g node-gyp

COPY . .

RUN npm install
RUN npm run build

ENTRYPOINT [ "sh", "./start.sh" ]