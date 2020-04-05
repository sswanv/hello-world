FROM golang:latest

ENV GO111MODULE on
ENV GO_PROXY "https://goproxy.cn,direct"

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main main.go

CMD /app/main

