FROM node:14.17.0

WORKDIR /ezops-test-jhonatanaguiar
# Install app dependencies
COPY ["package.json", "package-lock.json*", "./"]
USER node
RUN npm install
COPY . .

CMD [ "node", "server.js" ]