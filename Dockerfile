FROM golang:1.26

WORKDIR /app

COPY main.go go.mod go.sum ./
RUN go mod download

RUN go build -o server .
EXPOSE 3000

CMD ["./server"]
