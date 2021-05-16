FROM alpine:latesd

RUN apk add --no-cache nodejs npm

WORKDIR /usr/src/ezops-test-jhonatanaguiar

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]