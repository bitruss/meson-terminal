FROM ubuntu:18.04

EXPOSE 430

RUN apt-get update && apt-get install -y tar \
    tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn