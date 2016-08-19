# golang-micro docker images
trusted builds *AND* small images

`golang-micro` is a docker image that downloads Golang in memory each time something calls the `go` binary.
It is particularly useful to build minimal images while still using the Docker trusted builds' system.

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
