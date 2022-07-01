# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN  apk add --no-cache --virtual .gyp python3 make g++
WORKDIR /app
COPY . .
RUN npm install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
