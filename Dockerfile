# syntax=docker/dockerfile:1
FROM node:12-alpine
WORKDIR /app
COPY . .
RUN npm install 
CMD ["node", "src/index.js"]
EXPOSE 3000
