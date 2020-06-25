# Specify a base image
FROM node:alpine

# Install some dependencies
WORKDIR /home/support/visits
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm","start"]
