FROM nginx:stable-alpine
RUN rm /etc/nginx/conf.d/*
ADD nginx.conf /etc/nginx/nginx.conf
ADD s3.conf /etc/nginx/conf.d/s3.conf
ADD entrypoint.sh /
RUN chmod 700 /entrypoint.sh

ENTRYPOINT /entrypoint.sh
