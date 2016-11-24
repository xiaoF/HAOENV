FROM rabbitmq

# Define environment variables.
ENV RABBITMQ_USER admin
ENV RABBITMQ_PASSWORD admin

RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_web_stomp

ADD rabbitmq-start.sh /root/rabbitmq-start
RUN chmod +x /root/rabbitmq-start

EXPOSE 15671 15672 15674


# Define default command
ENTRYPOINT ["/root/rabbitmq-start"]