FROM rabbitmq:3.6.1

# Set the timezone.
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

ADD rabbitmq-start.sh /usr/bin/rabbitmq-start
RUN chmod +x /usr/bin/rabbitmq-start