FROM node:18.16.0-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV MONGO_URI=pass

EXPOSE 8080

CMD node app.js
