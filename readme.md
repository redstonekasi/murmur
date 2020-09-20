# redstonekasi/murmur

docker image for murmur (mumble server) based on `lsiobase/alpine`.

## Supported Architectures
| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64-latest |
| arm64 | arm64v8-latest |
| armhf | arm32v7-latest |

## Usage

Here are some usage examples to help you get started.

### docker

```
docker create \
  --name=murmur \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 64738:64738/tcp \
  -p 64738:64738/udp \
  -v /path/to/config:/config \
  --restart unless-stopped \
  redstonekasi/murmur
```

### docker-compose

```
version: '3'

services:
  murmur:
    container_name: 'murmur'
    image: 'redstonekasi/murmur'

    ports:
      - '64738:64738/tcp'
      - '64738:64738/udp'

    volumes:
      - './config:/config'

    restart: 'unless-stopped'
```
