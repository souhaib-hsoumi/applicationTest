# syntax=docker/dockerfile:1
FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn config set registry https://registry.npmjs.org/ansi-regex
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
