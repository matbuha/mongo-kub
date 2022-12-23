FROM ubuntu:18.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libmongoc-dev \
    libbson-dev

# Add the source files to the container
ADD . /app

# Build the application
WORKDIR /app
RUN cmake . && make

# Set the default command to run when starting the container
CMD ["/app/mongodb-app"]
