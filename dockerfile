FROM nginx
EXPOSE 80
VOLUME /var/www
RUN apt-get update
RUN apt-get install -y vim-gtk  && apt-get install -y inetutils-ping
COPY conf.d/* /etc/nginx/conf.d


