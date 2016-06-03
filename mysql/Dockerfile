FROM mysql
MAINTAINER Jorge Cerpa

ENV MYSQL_ROOT_PASSWORD=supersecret

ADD dataDir.tar.gz /var/lib/mysql

COPY asterisk_db.sql /temp/asterisk_db.sql