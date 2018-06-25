FROM node:alpine

RUN npm install -g yo grunt-cli bower
RUN rm /app/canceler-presentation -r
WORKDIR /app

RUN npm install
RUN bower install
CMD ["npm", "start"]
