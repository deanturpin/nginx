FROM nginx:alpine

WORKDIR /app

RUN apk update && \
    apk upgrade

CMD cat /etc/os-release && \
    nginx -vt

