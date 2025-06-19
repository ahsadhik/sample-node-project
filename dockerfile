# Use official Node.js image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose port (if your app uses a different one, change this)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
