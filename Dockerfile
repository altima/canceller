FROM node:alpine

RUN npm install -g yo grunt-cli bower
RUN git clone https://github.com/tuhinc/canceller.git /app
WORKDIR /app
RUN npm install
RUN bower install
CMD ["npm", "start"]
