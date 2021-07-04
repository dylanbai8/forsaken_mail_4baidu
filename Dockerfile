FROM node:lts-alpine
MAINTAINER Hongcai Deng <admin@dhchouse.com>

WORKDIR /forsaken-mail

RUN wget https://github.com/dylanbai8/forsaken_mail_4baidu/archive/master.tar.gz -q -O /tmp/forsaken_mail_4baidu-master.tar.gz \
    && tar zxf /tmp/forsaken_mail_4baidu-master.tar.gz -C /tmp \
    && mv /tmp/forsaken_mail_4baidu-master/* /forsaken-mail \
    && rm /tmp/forsaken_mail_4baidu-master.tar.gz \
    && npm install --production \
    && npm cache clean --force

EXPOSE 25
EXPOSE 3000
CMD ["npm", "start"]
