FROM node:22-alpine

WORKDIR /app

COPY ./package.json ./

RUN yarn install

COPY . .

EXPOSE 8081

RUN yarn build

CMD ["yarn", "preview", "--host", "0.0.0.0", "--port", "8081"]