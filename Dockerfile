FROM haproxy:1.9-alpine
RUN apk update \
    && apk add curl \
    && rm -rf /var/cache/apk/*

ENV HAPROXY_CFG_URL ''

COPY docker-entrypoint-override.sh /
ENTRYPOINT ["/docker-entrypoint-override.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
