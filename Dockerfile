FROM node:14

WORKDIR /app

# Copy the package.json and install dependencies
COPY package.json /app
RUN npm install

# Copy the rest of the application code
COPY . /app

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npm", "start"]
