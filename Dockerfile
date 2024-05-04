
#use the latest node image
FROM node:latest


# Create app directory
RUN mkdir -p /usr/src/app && chown -R node:node /usr/src/app
WORKDIR /usr/src/app

#copy package.json and package-lock.json
COPY package*.json ./


#install dependencies
RUN npm install


#copy all files
COPY . .


#expose port 3000
EXPOSE 3000


#run the app
CMD ["npm", "run", "start"]