FROM debian:buster-slim

RUN apt-get update && \
  apt-get install -y vim tree make iputils-ping net-tools sshfs

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

#ENTRYPOINT ["/docker-entrypoint.sh"]
