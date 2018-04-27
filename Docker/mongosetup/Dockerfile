# Based on: https://github.com/nginxinc/docker-nginx/blob/master/Dockerfile
FROM mongo:3.0.7

# Set the timezone.
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
COPY setup.sh /setup.sh