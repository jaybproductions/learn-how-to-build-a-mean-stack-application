#using Node v10
FROM node:10

#create dirs
WORKDIR /usr/src/lafs

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4200

CMD ["node", "server/server.js"]
