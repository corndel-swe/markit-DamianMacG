# Use the Node.js 18 Alpine base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 5173
EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev"]