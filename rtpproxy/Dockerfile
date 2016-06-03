FROM alpine
MAINTAINER Jorge Cerpa

RUN apk add --update rtpproxy && rm -rf /var/cache/apk/*

#COPY ./etc/conf.d/rtpproxy /etc/conf.d/rtpproxy

WORKDIR /etc/init.d/

CMD rtpproxy $RTPPROXY_OPTS