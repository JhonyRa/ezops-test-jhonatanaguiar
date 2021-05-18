FROM node:14.17.0
RUN mkdir -p /var/app/ezops-test-jhonatanaguiar/node_modules && chown -R node:node /var/app/ezops-test-jhonatanaguiar/
WORKDIR /var/app/ezops-test-jhonatanaguiar/
# Install app dependencies
COPY ["package.json", "package-lock.json*", "./"]
USER node
RUN npm install
COPY --chown=node:node . .

CMD [ "node", "server.js" ]