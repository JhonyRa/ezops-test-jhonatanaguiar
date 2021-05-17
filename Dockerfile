FROM alpine:latest

COPY ezops-test-jhonatanaguiar /var/app/ezops-test-jhonatanaguiar

ENTRYPOINT ["node", "./server.js", "/var/app/ezops-test-jhonatanaguiar/server.js"]