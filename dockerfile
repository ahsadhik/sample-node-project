# Use a Node.js base image
FROM node:14

# Create app directory
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
