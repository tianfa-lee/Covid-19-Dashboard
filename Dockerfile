# Build Steps
FROM node:alpine3.10 as build-step

# Make app directory in container
RUN mkdir /app

# Identify working directory
WORKDIR /app

# Copy package
COPY package.json /app

# Install rpm packages from package.json
RUN npm install

# Copy over app to app folder
COPY . /app

# Command to build ReactJS application for deploy
RUN npm run build

# Run Steps
FROM nginx:1.19.8-alpine  
COPY --from=build-step /app/build /usr/share/nginx/html