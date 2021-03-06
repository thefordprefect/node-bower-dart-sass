FROM node:latest

RUN apt-get update -qy && apt-get install -y lftp zip

# Install Sass 
RUN npm install -g sass

# Install Bower 
RUN npm install -g bower

# Add User
RUN adduser --disabled-password --gecos "" runner
USER runner
