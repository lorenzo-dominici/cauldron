FROM nodered/node-red:3.0.2

# Install additional packages from github
WORKDIR /usr/src/dl
RUN git clone -b snap4city-v3 https://github.com/lorenzo-dominici/cauldron
RUN git clone https://github.com/disit/snap4city
RUN git clone https://github.com/disit/node-red-contrib-snap4city-user
RUN git clone https://github.com/disit/node-red-contrib-snap4city-developer

# copy cauldron into @node-modules
RUN cp -r cauldron/packages/node_modules/@node-red /usr/src/node-red/node_modules
RUN cp -r snap4city/nodered-snap4city-microservices/snap4city-user-authentication /usr/src/node-red/node_modules/
RUN cp -r node-red-contrib-snap4city-user /usr/src/node-red/node_modules/
RUN cp -r node-red-contrib-snap4city-developer /usr/src/node-red/node_modules/

WORKDIR /usr/src/node-red