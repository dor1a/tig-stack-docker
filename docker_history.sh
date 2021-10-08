# telegraf
docker run -itd --name telegraf --restart always \
  --net host \
  -v $PWD/telegraf/telegraf.conf:/etc/telegraf/telegraf.conf:ro \
  -v /usr/share/snmp/mibs:/usr/share/snmp/mibs:ro \
  -v /:/hostfs:ro \
  telegraf:1.8

# influxdb
docker run -itd --name influxdb --restart always --hostname influxdb \
  -p 8086:8086 \
  -v $PWD/influxdb/influxdb.conf:/etc/influxdb/influxdb.conf:ro \
  -v $PWD/influxdb/library:/var/lib/influxdb \
  influxdb:1.8 -config /etc/influxdb/influxdb.conf

# grafana
docker run -itd --name grafana --restart always --hostname grafana --user 0 \
  -p 3000:3000 \
  -v $PWD/grafana/config:/etc/grafana \
  -v $PWD/grafana/library:/var/lib/grafana \
  grafana/grafana:latest
