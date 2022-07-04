# syntax=docker/dockerfile:1
FROM python:3-alpine
RUN apk add --update --no-cache python3 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
