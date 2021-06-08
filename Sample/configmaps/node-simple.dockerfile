FROM node:alpine
LABEL author="viktor"
COPY server.js /server.js
ENTRYPOINT ["node", "server.js"]