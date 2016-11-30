#!/bin/bash

/usr/bin/mongod -f /etc/mongod.conf
sleep 5
/usr/bin/mongo --eval "rs.initiate()"