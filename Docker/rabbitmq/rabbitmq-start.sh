#!/bin/sh

## Create Rabbitmq user
#( sleep 5 ; \
#rabbitmqctl add_user admin admin ; \
#rabbitmqctl set_user_tags admin administrator ; \
#rabbitmqctl set_permissions -p / admin  ".*" ".*" ".*" ; \
#rabbitmqctl delete_user guest ; \
#
#echo "*** User admin with password admin completed. ***" ; \
#echo "*** Log in the WebUI at port 15672 ***") &
#
#rabbitmq-server $@

# Create Rabbitmq user
( sleep 5 ; \
rabbitmqctl add_user haostay haostay1
rabbitmqctl add_user haostay_admin Haozhu123$
rabbitmqctl set_permissions -p / haostay ".*" "^$" ".*"
rabbitmqctl set_permissions -p / haostay_admin ".*" ".*" ".*"
rabbitmqctl set_user_tags haostay_admin administrator
rabbitmq-plugins enable rabbitmq_management
rabbitmq-plugins enable rabbitmq_web_stomp
rabbitmqctl delete_user guest

echo "*** User admin with password admin completed. ***" ; \
echo "*** Log in the WebUI at port 15672 ***") &

rabbitmq-server $@