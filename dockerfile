FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN apt-get update
RUN apt-get install -y vim-tiny
COPY index.html /usr/share/nginx/html
COPY conf.d/default.conf /etc/nginx/conf.d
