FROM node:22-alpine

WORKDIR /app

COPY ./package.json ./

RUN yarn install

COPY . .

EXPOSE 3006

RUN yarn build

CMD ["sh", "-c", "yarn migration:up;node dist/main.js"]
