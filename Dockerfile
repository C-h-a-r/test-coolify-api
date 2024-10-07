# Use the official Node.js image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app




COPY package.json ./
COPY index.js ./

# Install dependencies
RUN npm i fastify @fastify/cors


# Command to run the app
CMD ["node", "index.js"]


# Expose the port the app runs on
EXPOSE 3000

