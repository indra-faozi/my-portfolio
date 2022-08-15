FROM node:14.16.0-alpine3.13

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN npm install

CMD npm start