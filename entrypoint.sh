#!/bin/bash

MQTT_HOST=${MQTT_HOST:-"mqtt"}
WEB_LISTEN_ADDRESS=${WEB_LISTEN_ADDRESS:-":9226"}

exec /usr/local/bin/victron-exporter -mqtt.host "$MQTT_HOST" -web.listen-address "$WEB_LISTEN_ADDRESS"

