FROM node:14.17.1-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000:3000

CMD [ "npm", "start" ]