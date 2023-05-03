#!/bin/sh
if [ "$TYPE" = "build" ];then
    echo "BUILD SUCCESS"
elif [ "$TYPE" = "ubuntu" ];then
    /etc/init.d/ssh start
    exec "$@"
elif [ "$TYPE" = "alpine" ];then
    /usr/sbin/sshd -D
    exec "$@"
fi