# Use the official Node.js image as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 8080

# Define the command to run the application
CMD ["npm", "start"]
