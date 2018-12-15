# dremio_docker
Slightly modified dremio docker distribution for backup/restore operation


## Optional setup

It's handy to have two screens

```bash
tmux new -s dremio
```

## Build

```bash
docker-compose build
docker-compose up
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio start
```

## Admin Tasks

To explore:
```bash

docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio start
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio status
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio stop


# first make bkup writable (make sure to revert afterwards)
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio-admin backup -u <user> -p <pass> -d /opt/dremio/bkup




# interactive
docker exec -it dremio_docker_dremio_1 /bin/bash


```