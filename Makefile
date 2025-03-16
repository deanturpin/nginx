all:
	docker build -t deanturpin/nginx .
	docker scout quickview deanturpin/nginx
	docker scout recommendations deanturpin/nginx
