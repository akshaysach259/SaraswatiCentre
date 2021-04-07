FROM node:15.14.0-alpine3.10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk update && upgrade
RUN npm install

RUN npm run build

EXPOSE 5000

ENV NUXT_HOST=0.0.0.0

ENV NUXT_PORT=5000

CMD ["npm","run","start"]