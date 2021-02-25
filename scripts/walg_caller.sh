#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS=GCPCREDENTIALS
export WALG_GS_PREFIX=STORAGEBUCKET/$(hostname)-$(date +"%d%m%Y")
export PGUSER=POSTGRESUSER
export PGDATABASE=POSTGRESDB
export PGHOST=/var/run/postgresql
export PGPORT=5432
echo "GOOGLE_APPLICATION_CREDENTIALS: $GOOGLE_APPLICATION_CREDENTIALS"
echo "WALG_GS_PREFIX: $WALG_GS_PREFIX"
echo "PGUSER: $PGUSER"
echo "PGDATABASE: $PGDATABASE"

echo "Running command /usr/local/bin/wal-g $1 $2 $3"
/usr/local/bin/wal-g $1 $2 $3
