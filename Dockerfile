###########################################
# STAGE 1: BUILD
###########################################
FROM golang:1.22 AS builder

# Set Go environment
ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GO111MODULE=on

# Set the working directory inside the container
WORKDIR /app

# Copy the source code
COPY . .

# Download dependencies (optional for caching)
RUN go mod tidy

# Build the Go app
RUN go build -o app .

###########################################
# STAGE 2: RUNTIME
###########################################
FROM scratch

# Copy the compiled binary from builder stage
COPY --from=builder /app/app /app

# Set the entrypoint
ENTRYPOINT ["/app"]
