FROM alpine
MAINTAINER Jorge Cerpa

RUN apk add --update kamailio kamailio-mysql kamailio-unixodbc kamailio-utils kamailio-presence kamailio-outbound kamailio-websocket mysql-client && rm -rf /var/cache/apk/*

COPY msilo-create.sql /usr/share/kamailio/mysql/msilo-create.sql

EXPOSE 5060

#ENV PUBLICIP=10.200.3.53

COPY ./etc/kamailio/ /etc/kamailio/

#RUN sed -i 's/#!define PUBLICIP \s*.*/#!define PUBLICIP  \"'$PUBLICIP'\"/g' /etc/kamailio/kamailio.cfg

#CMD kamailio start
CMD sed -i 's/#!define PUBLICIP \s*.*/#!define PUBLICIP  \"'$PUBLICIP'\"/g' /etc/kamailio/kamailio.cfg && /usr/sbin/kamailio -P /var/run/kamailio.pid -m 64 -M 8 -u kamailio -g kamailio -DD -E -e