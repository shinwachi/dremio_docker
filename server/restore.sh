#!/bin/bash
# you need to stop dremio first
rm -rf /opt/dremio/data/*
mkdir /opt/dremio/data/db
# not needed
/opt/dremio/bin/dremio-admin restore -d /opt/dremio/bkup/$1 -v
# real deal
/opt/dremio/bin/dremio-admin restore -d /opt/dremio/bkup/$1 -r

# you'll need to start the server