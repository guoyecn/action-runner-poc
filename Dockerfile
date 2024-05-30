#It will use node:19-alpine3.16 as the parent image for 
#building the Docker image
FROM node:21-alpine3.19
#It will create a working directory for Docker. The Docker
#image will be created in this working directory.
WORKDIR /app
#Copy the React.js application dependencies from the 
#package.json to the react-app working directory.
COPY package.json .
#install all the React.js application dependencies
RUN npm i
COPY . .
RUN npm run build
EXPOSE 5173
#The command to start the React.js application container
CMD ["npm", "run", "preview"]
