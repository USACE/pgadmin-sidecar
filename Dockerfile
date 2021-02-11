FROM alpine:latest

# User 5050 (pgadmin) is container user for dpage/pgadmin4
RUN adduser --disabled-password --uid 5050 pgadmin

VOLUME /data

ENTRYPOINT ["/bin/ash", "-c", "mkdir -p /data/pgadmin; chown -R 5050:5050 /data/pgadmin; ls -alhR /data; exit 0"]
