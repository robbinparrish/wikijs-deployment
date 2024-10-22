## Disclaimer.
The content on this account/repository provided solely for educational and informational purposes.
It is not intended for use in making any kind of business, investment and/or legal decisions.
Although every effort has been made to keep the information up-to-date and accurate, no representations and/or warranties, express and/or implied, completeness, accuracy, reliability, suitability, and/or availability of the content.

## WikiJS.
This can be used to setup a wiki.js Server.  
WikiJS - https://docs.requarks.io/

Since the Postgresql image default uses non-root user in image and this user does not have write permission to host directory with bind mount. Need to perform followings to make it work with bind mount.
```bash
mkdir -p ./pgsql-db/backups
chown -R 1000:1000 ./pgsql-db/backups
```

## Docker Compose Version.
Always validate that [docker-compose](https://github.com/docker/compose/releases/) version is latest.
If not then use the latest released version. As of updating this document `v2.24.0` was latest released version.

### Starting the container.
```bash
docker-compose up -d
```

### Checking the container logs.
```bash
docker-compose logs -f
```

### Once Container is successfully created, we can access the webui in the browser - http://IPADDR_OF_SYSTEM

WikiJS does not provide a non-interactive configuration. We need to follow the wizard to setup the configuration. For this follow [Additional Configuration](./configs/additional-configs.md).

[Backup and Restore](./configs/backup-and-restore.md)

[Upgrading WikiJS](./configs/upgrading-wikijs.md)
