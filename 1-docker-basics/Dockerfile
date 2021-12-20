FROM nginx:alpine
LABEL maintainer="Shokhijakhon Kodirov <tasaddux@gmail.com>"
RUN rm /etc/nginx/conf.d/default.conf
COPY ./website /usr/share/nginx/html/
COPY ./website.conf /etc/nginx/nginx.conf
#VOLUME website
ENTRYPOINT ["nginx", "-g", "daemon off;"]
