FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y \
       curl && \
    curl -sL https://deb.nodesource.com/setup_20.x -o /tmp/nodesource_setup.sh && \
    chmod 755 /tmp/nodesource_setup.sh && \
    /tmp/nodesource_setup.sh && \
    apt install -y \
       nodejs && \
    npm install -g quicktype && \
    apt remove -y \
       curl && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["quicktype"]
