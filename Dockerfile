# Use the official Node.js image as base
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 2345

# Command to run the application
CMD ["node", "app.js"]
