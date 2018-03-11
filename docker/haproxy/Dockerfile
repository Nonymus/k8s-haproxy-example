FROM haproxy:1.8-alpine
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg" ]
