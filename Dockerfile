# syntax=docker/dockerfile:1
FROM node:12-alpine

WORKDIR /app
COPY . .
RUN npm config set registry http://registry.npmjs.org/connect 
RUN npm config set strict-ssl false
RUN npm install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
