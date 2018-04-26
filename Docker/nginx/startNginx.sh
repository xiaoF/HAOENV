#!/bin/bash
rm -rf bundle/README
rm -rf bundle/packages/*/.build*
rm -rf bundle/packages/*/.styl
rm -rf bundle/*/*.md*
rm -rf bundle/programs/server
#if [ ! -f /etc/nginx/conf/servername.conf ]
#then
#  rm /etc/nginx/conf/servername.conf
#  ln -s /etc/nginx/conf/servername-$HOST_TARGET.conf /etc/nginx/conf/servername.conf
#fi
#service fail2ban restart
nginx -g "daemon off;"
