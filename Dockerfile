FROM alpine:latest
EXPOSE 9198
COPY logstash_exporter /
RUN apk add --no-cache tini
# Tini is now available at /sbin/tini
ENTRYPOINT ["/sbin/tini", "--", "/logstash_exporter"]

