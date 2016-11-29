FROM rabbitmq:3.6.1

# Define environment variables.
ENV RABBITMQ_USER admin
ENV RABBITMQ_PASSWORD admin

RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_web_stomp

ADD rabbitmq-start.sh /usr/bin/rabbitmq-start
RUN chmod +x /usr/bin/rabbitmq-start

EXPOSE 15671 15672 15674 5671 5672 25672 4369 61613 61614


# Define default command
ENTRYPOINT ["/usr/bin/rabbitmq-start"]