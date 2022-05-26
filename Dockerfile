FROM debian:unstable-slim as builder
COPY install-curator.sh /

RUN bash /install-curator.sh

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

ENTRYPOINT ["/curator/curator"]