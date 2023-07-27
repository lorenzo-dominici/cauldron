FROM node:20-alpine

# base for building cauldron
RUN apk update && apk add python3 make git g++
RUN npm install -g node-gyp

# Install additional packages from github
WORKDIR /usr/src/dl
RUN git clone -b node-red-v3 https://github.com/lorenzo-dominici/cauldron
RUN git clone https://github.com/disit/snap4city
RUN git clone https://github.com/disit/node-red-contrib-snap4city-user
RUN git clone https://github.com/disit/node-red-contrib-snap4city-developer
RUN git clone https://github.com/disit/node-red-contrib-snap4city-d3-dashboard-widgets

# permissions
# USER root
# RUN chmod a+w /usr/src/node-red
# RUN chown -R "$USER" /usr/src/node-red

# Build cauldron
WORKDIR /usr/src/dl/cauldron
RUN npm install
RUN npm run build
WORKDIR /usr/src/dl

#copy modules
RUN mkdir /usr/src/node-red
RUN cp -r cauldron/. /usr/src/node-red/
RUN cp -r snap4city/nodered-snap4city-microservices/snap4city-user-authentication /usr/src/node-red/node_modules/
RUN cp -r node-red-contrib-snap4city-user /usr/src/node-red/node_modules/
RUN cp -r node-red-contrib-snap4city-developer /usr/src/node-red/node_modules/
RUN cp -r node-red-contrib-snap4city-d3-dashboard-widgets /usr/src/node-red/node_modules/

WORKDIR /usr/src/node-red

ENTRYPOINT [ "sh", "/usr/src/node-red/start.sh" ]