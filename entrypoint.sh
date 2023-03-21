#!/bin/sh
if [ "$TYPE" = "build" ];then
    echo "BUILD SUCCESS"
else
    /usr/sbin/sshd -D
    exec "$@"
fi