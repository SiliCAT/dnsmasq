FROM alpine:3.24

RUN apk add --no-cache dnsmasq

EXPOSE 53/udp 53/tcp

ENTRYPOINT ["/usr/sbin/dnsmasq", "--keep-in-foreground", "--log-facility=-"]
