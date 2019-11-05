FROM python:2.7

RUN apt update && apt install -y procps && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget https://github.com/eggnogdb/eggnog-mapper/archive/2.0.0.tar.gz && \
    untar xvf 2.0.0.tar.gz && \
    mv eggnog-mapper-2.0.0