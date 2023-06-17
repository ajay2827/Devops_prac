#pulling node docker image from docker hub
FROM node:20-alpine
#making dir file under the container
WORKDIR /the/workdir/app
#copying both file , for cache images
COPY package*.json /the/workdir/app/
#running  npm install cmd
RUN npm ci
# copying whole dir to container
COPY . .
# cmd for  running node js application 
CMD [ "npm","start" ]


