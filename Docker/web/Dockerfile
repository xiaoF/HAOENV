FROM busybox

ADD index.html /www/index.html

EXPOSE 8080

# Create a basic webserver and sleep forever
CMD httpd -p 8080 -h /www; tail -f /dev/null

