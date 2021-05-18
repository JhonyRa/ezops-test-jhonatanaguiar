FROM node:14.17.0
ENV NODE_ENV=production

WORKDIR /ezops-test-jhonatanaguiar
# Install app dependencies
COPY ["package.json", "package-lock.json*", "./"]
USER node
RUN npm install --production
COPY . .

CMD [ "node", "server.js" ]