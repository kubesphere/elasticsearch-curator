FROM python:3.6-alpine3.6

RUN pip install elasticsearch-curator && \
    mkdir /curator && \
    cp /usr/local/bin/curator /curator/curator

ENTRYPOINT ["/curator/curator"]