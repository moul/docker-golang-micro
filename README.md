# golang-micro docker images

[![GuardRails badge](https://badges.production.guardrails.io/moul/docker-golang-micro.svg)](https://www.guardrails.io)

[trusted builds](https://blog.docker.com/2013/11/introducing-trusted-builds/) *AND* [small images](https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/).

`golang-micro` is a docker image that downloads [Golang](https://golang.org) in memory each time something calls the `go` binary.

It is particularly useful to build [minimal images](https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/) while still using the [Docker trusted builds](https://blog.docker.com/2013/11/introducing-trusted-builds/).

## Usage

Before

```Dockerfile
FROM golang:1.7
... your build stuff ...
```

after

```Dockerfile
FROM moul/golang-micro:1.7
... your build stuff ...
```

## License

MIT
