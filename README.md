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

```bash

docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio start
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio status
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio stop


# first make bkup writable (make sure to revert afterwards)
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio-admin backup -u <user> -p <pass> -d /opt/dremio/bkup



# to restore

# (you'll need to modify /bkup folder permission first) e.g., chmod ... -R
$ ls bkup
dremio_backup_2018-12-15_03.26

docker exec dremio_docker_dremio_1 /server/restore.sh dremio_backup_2018-12-15_03.26
# start up
docker exec dremio_docker_dremio_1 /opt/dremio/bin/dremio start

# interactive
docker exec -it dremio_docker_dremio_1 /bin/bash


```