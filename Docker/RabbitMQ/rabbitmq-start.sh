#!/bin/sh

# Create Rabbitmq user
( sleep 5 ; \
rabbitmqctl add_user admin admin ; \
rabbitmqctl set_user_tags admin administrator ; \
rabbitmqctl set_permissions -p / admin  ".*" ".*" ".*" ; \
rabbitmqctl delete_user guest ; \

echo "*** User admin with password admin completed. ***" ; \
echo "*** Log in the WebUI at port 15672 ***") &

rabbitmq-server $@