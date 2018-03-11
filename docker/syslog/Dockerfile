FROM alpine
RUN apk update && \
  apk add --no-cache syslog-ng && \
  rm -rf /var/cache/apk/*
COPY syslog-ng.conf /etc/syslog-ng.conf
CMD ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng.conf"]
