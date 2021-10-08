docker run --rm \
  -e INFLUXDB_DB=telegraf \
  -e INFLUXDB_ADMIN_USER=admin \
  -e INFLUXDB_ADMIN_PASSWORD= \
  -e INFLUXDB_USER= \
  -e INFLUXDB_USER_PASSWORD= \
  -v $PWD/library:/var/lib/influxdb \
  influxdb:1.8 /init-influxdb.sh
