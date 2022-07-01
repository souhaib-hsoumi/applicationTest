# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN npm install
WORKDIR /app
COPY . .
RUN npm install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
