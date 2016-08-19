FROM moul/golang-micro:1.7
COPY main.go $GOPATH/src/github.com/moul/docker-golang-micro/example/go-build-local/
RUN go build -o /hello-world $GOPATH/src/github.com/moul/docker-golang-micro/example/go-build-local/main.go
RUN /hello-world
CMD ["/hello-world"]
