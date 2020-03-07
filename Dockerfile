
FROM node:current-alpine
WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install --production
copy ..
ENV PORT=8080

CMD ["node","server.js"]
