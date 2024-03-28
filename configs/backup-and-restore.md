## Backup and Restore.
https://docs.requarks.io/en/install/transfer

### Backup WikiJS instance.
Since WikiJS stores all data in the `postgresql` database so we will need to backup the whole database.

All backups are stored in `./pgsql-db/backups` directory.  

For backup of postgresql database we will need to create a directory and set the correct ownership.
```bash
mkdir -p ./pgsql-db/backups
chown -R 1000:1000 ./pgsql-db/backups
```

#### Triggering Backup.
Run following command to trigger the backup.
This will create a `.sql` file containing database.
```bash
docker-compose exec -it pgsql-db /usr/bin/pg_dumpall \
 --clean -U postgres > ./pgsql-db/backups/pgsql-db-backup.sql
```

#### Triggering Restore.
Followings conditions must be met for restore.
- A working WikiJS instance.

#### Restore.
- Stop the WikiJS container.
```bash
docker-compose down wikijs
```

- Copy the postgresql backup file for restore.
```
Copy pgsql-db-backup.sql file to ./pgsql-db/backups directory.
```

- Restore the postgresql backup.
```bash
docker-compose exec -it pgsql-db psql -U postgres -f /var/lib/postgresql/backups/pgsql-db-backup.sql
```

### Stop all the container.
```
docker-compose down
```

### Starting the container.
```
docker-compose up -d
```

### Checking the container logs.
```
docker-compose logs -f
```

#### Once Backup is restored login to the WikiJS instance and verify that all configurations and data are restored.

[Automatic Backup Setup](./automatic-backup/README.md)
