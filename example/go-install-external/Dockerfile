FROM moul/golang-micro:1.7

# install git for go get
RUN apt-get install -y git-core && apt-get clean

# fetch the repo and build the binary
RUN go get     github.com/moul/number-to-words/cmd/number-to-words \
 && go install github.com/moul/number-to-words/cmd/number-to-words

# testing
RUN number-to-words 42

# setting entrypoint
ENTRYPOINT ["number-to-words"]
