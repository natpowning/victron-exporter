# Invoked from goreleaser, uses binaries build by goreleaser
FROM alpine:3.16

RUN apk add --no-cache bash

COPY victron-exporter /usr/local/bin

ENTRYPOINT ["/usr/local/bin/victron-exporter"]
