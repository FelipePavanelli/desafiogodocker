FROM golang:1.17 AS builder

WORKDIR /app

FROM scratch

WORKDIR /app

COPY --from=builder /app .

CMD ["go", "run", "main.go"]