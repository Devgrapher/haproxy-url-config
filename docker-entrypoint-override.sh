#!/bin/sh
set -e

if [[ -z "${HAPROXY_CFG_URL}" ]]
then
    echo "ENV 'HAPROXY_CFG_URL' should be set!"
    exit 1
fi

# download haproxy.cfg
curl ${HAPROXY_CFG_URL} --output /usr/local/etc/haproxy/haproxy.cfg

exec /docker-entrypoint.sh $@
