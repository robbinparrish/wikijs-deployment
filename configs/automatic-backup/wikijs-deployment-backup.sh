#!/bin/bash

# Path where the WikiJS deployment is configured.
# NEED TO REPLACE THEASE TO CORRECT PATH.
WIKIJS_DEPLOYMENT_DIR="${HOME}/wikijs-deployment"
WIKIJS_DEPLOYMENT_BACKUP_PATH="${HOME}/wikijs-deployment-backup"

# Backup directory.
BACKUP_TIME=$(date "+%d%m%Y%H%M%S")
WIKIJS_DEPLOYMENT_BACKUP_DIR="${WIKIJS_DEPLOYMENT_BACKUP_PATH}/${BACKUP_TIME}"

cd "${WIKIJS_DEPLOYMENT_DIR}" || exit 1

# Backup configuration files.
mkdir -p "${WIKIJS_DEPLOYMENT_BACKUP_DIR}"

# Create backup.
mkdir -p ./pgsql-db/backups
chown -R 1000:1000 ./pgsql-db/backups
docker-compose exec -it pgsql-db /usr/bin/pg_dumpall --clean -U postgres > ./pgsql-db/backups/pgsql-db-backup.sql
mv -fv ./pgsql-db/backups/pgsql-db-backup.sql "${WIKIJS_DEPLOYMENT_BACKUP_DIR}"/
sync
 
# Compress the backup.
cd "${WIKIJS_DEPLOYMENT_BACKUP_PATH}" || exit 1
tar -cvzf "${BACKUP_TIME}".tar.gz "${BACKUP_TIME}"
rm -rf "${BACKUP_TIME}"
sync
