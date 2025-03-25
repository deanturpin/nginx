all:
	docker compose run --rm -it certbot certonly --webroot --webroot-path=/usr/share/nginx/html -d turpin.cloud

entr:
	ls docker-compose.yml nginx.conf Dockerfile Makefile | entr -cr make

	# docker build -t deanturpin/nginx .
	# docker scout quickview deanturpin/nginx
	# docker scout recommendations deanturpin/nginx
	# docker run --rm --network=host deanturpin/nginx
