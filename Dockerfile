FROM node:14.16.0-alpine3.13 as builder

WORKDIR /app

COPY . ./

RUN npm install

EXPOSE 3000

FROM astefanutti/scratch-node

WORKDIR /app

COPY --from=builder /app ./

ENTRYPOINT ["node", "app.js"]
# CMD npm start //Tidak bisa CMD karena scratch-node bukan alpine, tidak ada OS nya