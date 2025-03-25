FROM nginx:alpine-slim

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git htop certbot

RUN git clone https://github.com/deanturpin/deanturpin.github.io.git

RUN apk add --no-cache pandoc && \
    cd deanturpin.github.io && \
    pandoc README.md -o /usr/share/nginx/html/index.html

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
