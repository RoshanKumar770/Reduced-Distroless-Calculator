###########################################
# BASE IMAGE
###########################################

FROM ubuntu:22.04 AS build

# Install required packages
RUN apt-get update && apt-get install -y golang-go ca-certificates

# Set environment variables
ENV GO111MODULE=off \
    CGO_ENABLED=0

# Set working directory
WORKDIR /app

# Copy source code into container
COPY . .

# Build the Go app
RUN go build -o /app

# Set the entrypoint
ENTRYPOINT ["/app"]
