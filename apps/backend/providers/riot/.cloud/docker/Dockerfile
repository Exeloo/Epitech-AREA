FROM node:22-alpine

WORKDIR /app

COPY ./package.json ./

RUN yarn install

COPY . .

EXPOSE 3009

RUN yarn build

CMD ["sh", "-c", "node dist/main.js"]
