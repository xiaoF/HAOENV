FROM rabbitmq:3.6.1

RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_web_stomp

ADD rabbitmq-start.sh /usr/bin/rabbitmq-start
RUN chmod +x /usr/bin/rabbitmq-start