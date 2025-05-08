FROM ubuntu:latest
RUN apt-get update
RUN apt install apache2 -y
COPY . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
