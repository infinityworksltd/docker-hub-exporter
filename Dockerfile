FROM python:3.5-alpine

RUN pip install prometheus_client requests

ENV BIND_PORT 9170
ENV INTERVAL 5

ADD . /usr/src/app
WORKDIR /usr/src/app

CMD ["python", "hub_exporter.py"]
