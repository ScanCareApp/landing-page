# Use an official Node.js runtime as the base image
FROM node:latest

# Create and set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 7000

# Command to run the application
CMD ["node", "index.js"]