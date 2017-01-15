FROM sandlayth/armv7l-nodejs
MAINTAINER Sandlayth <modepadu95@riseup.net>

RUN git clone https://github.com/seejohnrun/haste-server.git /opt/haste

WORKDIR /opt/haste

RUN rm /opt/haste/about.md

ADD conf/about.md /opt/haste/

RUN npm install

ADD conf/config.js /opt/haste/config.js

EXPOSE 80

VOLUME /opt/data

CMD ["npm", "start"]
