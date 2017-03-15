FROM redis:latest

# Cleanup
RUN rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man /usr/share/locale
RUN rm -rf /var/lib/cache /var/lib/log
RUN rm -rf /tmp/*

# Set the timezone.
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata


ADD redis.conf /usr/bin/redis.conf
RUN chmod +x /usr/bin/redis.conf
