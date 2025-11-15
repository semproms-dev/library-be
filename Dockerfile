FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y curl

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install npm dependencies
RUN npm install
RUN npm install -g yarn

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

CMD ["yarn", "dev"]