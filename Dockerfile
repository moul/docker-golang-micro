#FROM alpine:3.4
FROM ubuntu:xenial

RUN apt-get update && apt-get -y install wget && apt-get clean

ENV GOLANG_VERSION=1.7 \
    GOLANG_BIN_URL=https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz \
    GOLANG_BIN_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95 \
    GOPATH=/go \
    GOROOT=/dev/micro/go \
    PATH=$PATH:/go/bin:/dev/micro/go/bin

# alpine specific
#RUN apk add --no-cache ca-certificates openssl \
# && mkdir -p "$GOPATH/src" "$GOPATH/bin" \
# && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH

COPY ./wrappers/ /usr/local/bin/

# proof
RUN go version
