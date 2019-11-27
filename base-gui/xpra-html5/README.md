# Docker image for Xpra HTML5 Server

Original from https://github.com/lanrat/docker-xpra-html5 but modified to
not rely on winswitch

## Stand-along run

```sh
docker run --rm -v /etc/localtime:/etc/localtime -v 10000:10000 xpra-html5
```

## example docker-compose

```
version: '2'

services:
    x:
        image: ssmiller25/xpra-html5
        volumes:
            - /etc/localtime:/etc/localtime:ro
            - x_data:/data
        restart: always
        ports:
            - 80:10000

volumes:
    x_data: {}

```
