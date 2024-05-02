FROM node:14
WORKDIR /usr/src/app/
COPY src/package*.json ./src/
RUN npm install --prefix src
COPY . .
EXPOSE 3000
CMD ["node", "src/server.js"]