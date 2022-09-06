FROM node:14.16.0-alpine3.13 as builder

WORKDIR /app

COPY . ./

RUN npm install

FROM astefanutti/scratch-node

WORKDIR /app

COPY --from=builder /app ./

# ENTRYPOINT ["node", "app.js"]
CMD npm start