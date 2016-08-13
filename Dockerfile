FROM alpine:latest
MAINTAINER Marcelo Bartsch <marcelo@bartsch.cl>

RUN apk --no-cache add bind bash
VOLUME [ "/var/named" ]
ADD my_init /
ENTRYPOINT [ "/my_init" ]

