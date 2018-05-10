# parent image
FROM node:latest

# app directory
WORKDIR /app

# wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# install latest npm version
RUN npm install npm -g
# install dependencies
RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle sources
COPY . .

# Expose server port
EXPOSE 8080
# Start the app
CMD [ "npm", "start" ]
