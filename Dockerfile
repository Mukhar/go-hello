FROM golang:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Go app
RUN go build -o main .

# Set the entry point to the executable
ENTRYPOINT ["/app/main"]