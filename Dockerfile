FROM ubuntu:24.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/split-flow.tar.gz; \
    tar xf split-flow.tar.gz; \
    cp split-flow /usr/local/bin/split-flow; \
    cp start.sh /usr/local/bin/start.sh; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 700 split-flow;

RUN chmod 700 start.sh;

CMD start.sh
