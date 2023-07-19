FROM alpine:3

ENV USERNAME="" PASSWORD=""

COPY nginx.conf /etc/nginx/
COPY entrypoint.sh /

RUN apk update && \ 
    apk add nginx nginx-mod-http-dav-ext apache2-utils && \
    mkdir /data/ && \
    chmod +x /entrypoint.sh && \
    rm -rf /var/cache/apk/*

EXPOSE 80

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/entrypoint.sh && /usr/sbin/nginx -g 'daemon off;'"]
