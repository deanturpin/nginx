# nginx

Exploring deploying my top-level personal website in a Docker container.

## Objectives

- Deploy to latest Ubuntu web server
- Keep it fully patched
- Work out how to update individual services/containers when they are updated with minimal disruption
- Scale up to support other websites and services (e.g., Asterisk, email)
- Achieve a top class Docker scout health score

## Run

```bash
docker run --rm -it deanturpin/nginx
```
## Build locally

To develop the container.

```bash
make
```

## Testing your container

```bash
docker scout quickview dt/nginx
docker scout recommendations dt/nginx
```
