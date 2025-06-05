FROM node

WORKDIR /app

COPY package.json /app

RUN npm config set strict-ssl false

RUN npm i

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]

