FROM node:12-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --silent

COPY . .

EXPOSE 3000

CMD ["npm", "start"]