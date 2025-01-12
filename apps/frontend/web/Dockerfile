FROM node:22-alpine

WORKDIR /app

COPY ./package.json ./

RUN yarn install

COPY . .

RUN mkdir -p /shared/apk/

EXPOSE 8081

RUN yarn build

CMD ["/bin/sh", "-c", "cp /shared/apk/client.apk /app/.svelte-kit/output/client/ && yarn preview --host 0.0.0.0 --port 8081"]