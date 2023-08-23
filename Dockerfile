FROM node:14-alpine

WORKDIR /usr/src/app

RUN apk update && apk add python3 make g++ git

RUN npm install -g node-gyp

COPY . .

RUN npm install

ENTRYPOINT [ "sh", "./start.sh" ]