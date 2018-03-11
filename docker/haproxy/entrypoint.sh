#!/bin/sh
# Wait for syslog sidecar to be present
until netstat -nau | grep -q ":514"
do 
  echo waiting for logging container
  sleep 2
done

# hand nameserver set by kubernetes/docker to be used by haproxy
export DNS="$(cat /etc/resolv.conf | grep nameserver | cut -d ' ' -f2 -s)"
exec "/docker-entrypoint.sh" "$@"
