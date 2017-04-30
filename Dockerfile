FROM alpine:3.7

MAINTAINER tsaikd <tsaikd@gmail.com>

ENV SYNCTHING_VERSION=0.14.46
ENV HOME /syncthing

ADD syncthing-linux-amd64-v${SYNCTHING_VERSION}.tar.gz /syncthing

EXPOSE 8384 22000 21027/UDP

WORKDIR /syncthing/syncthing-linux-amd64-v${SYNCTHING_VERSION}

CMD ["./syncthing"]
