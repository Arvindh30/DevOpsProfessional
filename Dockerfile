FROM ubuntu:latest
RUN apt-get update && apt-get install apache2 -y
RUN sed -i 's/Listen 80/Listen 85/' /etc/apache2/ports.conf \
    && sed -i 's/<VirtualHost \*:80>/<VirtualHost *:85>/' /etc/apache2/sites-available/000-default.conf
COPY . /var/www/html
EXPOSE 85
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
