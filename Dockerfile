FROM alpine:latest
MAINTAINER Marcelo Bartsch <marcelo@bartsch.cl>

RUN apk --no-cache add bind bash
VOLUME [ "/var/named" ]
ENTRYPOINT [ "/usr/sbin/named", "-c", "/etc/bind/named.conf", "-g" , "-u", "named" ]

