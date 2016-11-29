#!/bin/bash

rabbitmqctl add_user admin admin
rabbitmqctl set_permissions -p / admin ".*" ".*" ".*"
rabbitmqctl set_user_tags admin administrator
rabbitmq-plugins enable rabbitmq_management
rabbitmq-plugins enable rabbitmq_web_stomp
rabbitmqctl delete_user guest

