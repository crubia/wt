FROM alpine
MAINTAINER Jorge Cerpa

RUN apk add --update asterisk && rm -rf /var/cache/apk/*

COPY ./etc/odbc.ini	/etc/odbc.ini
COPY ./etc/odbcinst.ini	/etc/odbcinst.ini
COPY ./etc/asterisk/extconfig.conf 	/etc/asterisk/extconfig.conf
COPY ./etc/asterisk/extensions.conf 	/etc/asterisk/extensions.conf
COPY ./etc/asterisk/res_odbc.conf 	/etc/asterisk/res_odbc.conf
COPY ./etc/asterisk/sip.conf 	/etc/asterisk/sip.conf

CMD asterisk -cvvvvv