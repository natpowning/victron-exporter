# Invoked from goreleaser, uses binaries build by goreleaser
FROM alpine:3.16

RUN apk add --no-cache bash

COPY victron-exporter /usr/local/bin

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

# Env variables MQTT_HOST and WEB_LISTEN_ADDRESS can be set at runtime
#
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
