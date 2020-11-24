FROM python:3.6-alpine3.6

RUN pip install urllib3==1.24.3 boto3==1.9.142
RUN pip install elasticsearch-curator

ENTRYPOINT ["/usr/local/bin/curator"]