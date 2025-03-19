FROM nginx:alpine-slim

WORKDIR /app

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git htop

RUN git clone https://github.com/deanturpin/deanturpin.github.io.git

RUN apk add --no-cache pandoc && \
    cd deanturpin.github.io && \
    pandoc README.md -o /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
