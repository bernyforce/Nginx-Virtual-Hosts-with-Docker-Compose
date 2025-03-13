FROM nginx:alpine

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY conf/site02.com.conf /etc/nginx/conf.d/site02.com.conf

RUN mkdir -p /usr/share/nginx/html/site01.com \
    && mkdir -p /usr/share/nginx/html/site02.com

EXPOSE 80 443
