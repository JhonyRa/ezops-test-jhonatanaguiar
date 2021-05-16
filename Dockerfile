FROM alpine:latesd

RUN apk add --no-cache nodejs npm

WORKDIR /ezops-test-jhonatanaguiar

COPY . /ezops-test-jhonatanaguiar

RUN npm ci
RUN npm node ./server.js

EXPOSE 3001