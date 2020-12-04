# hassio-auto-backup

Based on cron-mega-backup, adds PSQL client v13.

## Build

``` shell
docker build . -t rogermiret/auto-backup
```

## Run

``` shell
docker run -d \
  --name "auto-backup" \
  --restart=always \
  -v "/path/to/my/hassio:/backup/hassio" \
  --env MEGA_EMAIL=xxxxxxxx@xxxxxxxx.xxx \
  --env MEGA_PASSWORD="xxxxxxxx" \
  --env CRON_SCHEDULE="0 0 * * *" \
  --env RESOURCE_PATH=/backup \
  --env MEGA_RESOURCE_PATH=/backups/hassio/ \
  --env RESOURCE_NAME=hassio \
  --env PGHOST=xxxxxxxx \
  --env PGDATABASE=xxxxxxxx \
  --env PGUSER=xxxxxxxx \
  --env PGPASSWORD=xxxxxxxx \
  rogermiret/auto-backup
```
