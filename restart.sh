for UNIT in homeassistant.service grafana.service nginx.service zigbee2mqtt.service mqtt.service cadvisor.service prometheus.service influxdb.service jenkins.service mariadb-docker.service ; do
	systemctl stop ${UNIT}
	systemctl disable ${UNIT}
	systemctl status ${UNIT}
done
for UNIT in influxdb.service mariadb-docker.service mqtt.service zigbee2mqtt.service cadvisor.service prometheus.service grafana.service jenkins.service nginx.service homeassistant.service ; do
	systemctl start ${UNIT}
	systemctl enable ${UNIT}
	systemctl status ${UNIT}
done

