FROM golang:1.23.6-alpine3.21 AS builder

COPY . .
RUN go mod download
RUN go build -o /glance .
ENTRYPOINT ["/glance"]
