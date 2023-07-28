# install node.js with latest version
FROM node:latest

# setting working directory container
WORKDIR /app

# Copying all the files from local source 
COPY . .

# It will install all the depedencies that needed from package.json
RUN npm install 

# EXPOSE instruction
EXPOSE 3001

# It will execute the Docker image specified by following command
CMD ["node", "app.js"]