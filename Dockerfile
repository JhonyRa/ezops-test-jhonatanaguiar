FROM node:10-alpine
RUN mkdir -p /var/app/ezops-test-jhonatanaguiar/node_modules && chown -R node:node /var/app/ezops-test-jhonatanaguiar/
WORKDIR /var/app/ezops-test-jhonatanaguiar/
# Install app dependencies
COPY package*.json ./
USER node
RUN npm install
RUN npm install -g nodemon
RUN npm install -s mongoose
RUN npm install -s body-parser
RUN npm install -s socket.io
RUN npm install -s http
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "node", "server.js" ]