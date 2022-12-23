FROM ubuntu:18.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libmongoc-dev \
    libbson-dev

# Add the executable and necessary files to the container
ADD mongodb-app /usr/local/bin/mongodb-app

# Set the default command to run when starting the container
CMD ["mongodb-app"]
