# Based on: https://github.com/nginxinc/docker-nginx/blob/master/Dockerfile
FROM taojack/nginxbase:0.0.1

# Update system
ENV DEBIAN_FRONTEND noninteractive

# Set the timezone.
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Configuration files
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf /etc/nginx/conf/

# Launch NGinx
COPY startNginx.sh /startNginx.sh
RUN chmod u+x /startNginx.sh

## Bundle Meteor files
#COPY bundle /bundle/
## Project files exposed as HTTPS
#COPY  bundle/programs/web.browser/*.js \
#      bundle/programs/web.browser/*.css \
#      bundle/programs/web.browser/app \
#      /www/
#COPY bundle/programs/web.browser/assets \
#      /www/assets/
#COPY bundle/programs/web.browser/packages \
#      /www/packages/
# Fail2Ban File
COPY jail.conf /etc/fail2ban/jail.local
COPY nginx-req-limit.conf /etc/fail2ban/filter.d/nginx-req-limit.conf

CMD ["/startNginx.sh"]