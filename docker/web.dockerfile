FROM nginx:1.10.3

ADD docker/vhost.conf /etc/nginx/conf.d/default.conf

RUN apt-get install -y openssl

RUN openssl req -batch -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt