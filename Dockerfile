FROM node:latest

run apt-get update -qy && apt-get install -y lftp

# Install Sass 
RUN npm install -g sass

# Install Bower 
RUN npm install -g bower

# Add User
RUN adduser --disabled-password --gecos "" runner
USER runner
