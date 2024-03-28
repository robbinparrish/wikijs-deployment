# Perform an automatic backup of WikiJS Deployment.

## Copy backup script.
```bash
cp -a wikijs-deployment-backup.sh /usr/bin/
chmod +x /usr/bin/wikijs-deployment-backup.sh
```

## Update the configuration path in the backup script.
Update following in `/usr/bin/wikijs-deployment-backup.sh`
```
WIKIJS_DEPLOYMENT_DIR="${HOME}/wikijs-deployment"
WIKIJS_DEPLOYMENT_BACKUP_PATH="${HOME}/wikijs-deployment-backup"
```

## Copy systemd unit and timer files.
```bash
cp wikijs-deployment-backup.timer wikijs-deployment-backup.service /etc/systemd/system/
```

## Enable the timer.
```bash
systemctl daemon-reload
systemctl enable --now wikijs-deployment-backup.timer
```