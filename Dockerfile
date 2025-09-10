# Backend Dockerfile
FROM node:18

# App directory
WORKDIR /usr/src/app

# Copy package.json first
COPY node-backend/package.json ./

# Install dependencies
RUN npm install

# Copy rest of the backend code
COPY node-backend/ .

# Expose backend port
EXPOSE 5000

# Run app
CMD ["node", "server.js"]
