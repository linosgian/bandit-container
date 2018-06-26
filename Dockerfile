FROM python:2
RUN pip install bandit

RUN useradd -ms /bin/bash ubuntu
RUN mkdir -p /tmp/data/; chown -R ubuntu:ubuntu /tmp/data
RUN mkdir -p /repo; chown -R ubuntu:ubuntu /repo

USER ubuntu
WORKDIR /home/ubuntu

ADD bootstrap.sh /

ENTRYPOINT ["/bootstrap.sh"]
