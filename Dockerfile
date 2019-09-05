FROM node:9.2.1-alpine

# Install base packages and set timezone ShangHai
RUN apk update && apk add bash tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    apk add --no-cache mongodb
VOLUME [ "/data/db" ]

RUN mogod

WORKDIR /opt/cms
ADD . .

RUN npm install && \
    npm run init
EXPOSE 8080

CMD [ "node","server.js" ]