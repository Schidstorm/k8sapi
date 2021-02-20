FROM golang as build

ENV CGO_ENABLED=0
RUN go install github.com/schidstorm/k8sapi@latest


FROM alpine

RUN mkdir -p /usr/local/bin
COPY --from=build /go/bin/* /usr/local/bin/
ENTRYPOINT 'k8sapi'