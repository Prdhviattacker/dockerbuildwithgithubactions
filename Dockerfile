FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY * /var/www/html
EXPOSE 5000
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
