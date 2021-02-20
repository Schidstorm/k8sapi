FROM golang as build

RUN go get -u github.com/schidstorm/k8sapi/...

FROM busybox

COPY --from=build /go/bin/k8sapi /k8sapi
ENTRYPOINT '/k8sapi'