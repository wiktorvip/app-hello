FROM golang:1.21.0 as builder
WORKDIR /app
RUN go mod init hello-app
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /hello-app

FROM gcr.io/distroless/base-debian11
WORKDIR /
COPY --from=builder /hello-app /hello-app
COPY APP_VERSION /APP_VERSION
ENV PORT 8000
USER nonroot:nonroot
CMD ["/hello-app"]
