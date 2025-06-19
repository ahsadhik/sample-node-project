# Use official Node.js base image
FROM node:14.17.5

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD [ "node", "app.js" ]
