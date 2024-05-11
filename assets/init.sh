#!/bin/bash

# statement for if backup.sql exists run cmd to restore db
# if not load initdb.sql
DUMP=/tmp/dump.sql

# copies file into docker-entrypoint-initdb.d
if test -f "$DUMP"; then
    echo "$DUMP exists."
    cp "$DUMP" /docker-entrypoint-initdb.d/
else 
    echo "$DUMP does not exist."
    cp /tmp/initdb.sql /docker-entrypoint-initdb.d/
fi

/usr/local/bin/docker-entrypoint.sh postgres -c wal_level=logical &

