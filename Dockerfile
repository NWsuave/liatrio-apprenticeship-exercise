#Build
FROM golang:1.26-alpine AS Builder

WORKDIR /app
COPY go.mod go.sum .
RUN go mod download
COPY main.go .

RUN CGO_ENABLED=0 go build -o server .

#Run
FROM scratch AS final
WORKDIR /app
COPY --from=Builder /app/server . 
CMD ["./server"]
