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
```

## Run

```bash
docker exec -it dremio_docker_dremio_1 /bin/bash

# in container:
/opt/dremio/bin/dremio start
```