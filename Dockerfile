FROM node:alpine

RUN npm install -g yo grunt-cli bower
WORKDIR /app

RUN npm install
RUN bower install
CMD ["npm", "start"]
