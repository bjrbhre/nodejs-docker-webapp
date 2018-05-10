# parent image
FROM node:carbon

# app directory
WORKDIR /usr/src/app

# wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

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
