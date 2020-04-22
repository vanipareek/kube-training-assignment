FROM nginx
RUN mkdir -p /serverdata/
RUN sed -i "s+/usr/share/nginx/html+/serverdata/+g" /etc/nginx/conf.d/default.conf
COPY serverapp.sh ./
ENTRYPOINT /bin/bash ./serverapp.sh && nginx -g 'daemon off;'