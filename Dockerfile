# Use a Node.js LTS image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Expose the application port
EXPOSE 3000

# Set the environment variable
ENV NODE_ENV=production

# Start the application
CMD ["npm", "start"]

