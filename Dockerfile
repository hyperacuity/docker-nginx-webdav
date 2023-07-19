FROM alpine:3

ENV USERNAME="" PASSWORD=""

RUN apk update && \ 
    apk add nginx nginx-mod-http-dav-ext && \
    mkdir /data/ && \
    rm -rf /var/cache/apk/* 

COPY nginx.conf /etc/nginx/
COPY entrypoint.sh /

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/nginx", "-g", "daemon off;"] 