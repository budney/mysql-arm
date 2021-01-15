FROM ricado/mysql-server-armv7:latest
MAINTAINER Len Budney (len.budney@gmail.com)

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh", "mysqld"]
EXPOSE 3306
