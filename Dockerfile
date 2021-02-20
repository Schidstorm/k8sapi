FROM golang

RUN go get github.com/schidstorm/k8sapi/
WORKDIR /go/src/github.com/schidstorm/k8sapi/
RUN go build .