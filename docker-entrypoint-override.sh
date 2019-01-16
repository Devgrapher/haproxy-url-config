#!/bin/sh
set -e

# download haproxy.cfg
curl ${HAPROXY_CFG_URL} --output /usr/local/etc/haproxy/haproxy.cfg

exec /docker-entrypoint.sh $@
