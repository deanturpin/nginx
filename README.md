# nginx

Exploring deploying my top-level personal website in a Docker container.

__Note: these are my websites, not a general purpose container!__

See the [Dockerfile](https://github.com/deanturpin/nginx/blob/main/Dockerfilefile) on GitHub.

## Objectives

- Deploy to latest Ubuntu web server
- Keep it fully patched
- Work out how to update individual services/containers when they are updated with minimal disruption
- Scale up to support other websites and services (e.g., Asterisk, email)
- Achieve a top class Docker scout health score
- Use LetsEncrypt (in a container)

## Run

```bash
docker run --rm -p 80:80 deanturpin/nginx
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

## FastHosts

I chose FastHosts just to get away from Google and use a UK-based company/server.

The main contol panel is nice and simple, but then you click the cloud admin bit and it launches a portal designed with a completely different technolgy stack.