docker run --rm \
  -e INFLUXDB_DB=telegraf \
  -e INFLUXDB_ADMIN_USER=admin \
  -e INFLUXDB_ADMIN_PASSWORD= \
  -e INFLUXDB_USER= \
  -e INFLUXDB_USER_PASSWORD= \
  -v $PWD/influxdb/library:/var/lib/influxdb \
  influxdb:latest /init-influxdb.sh
