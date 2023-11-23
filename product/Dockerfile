FROM node:14

WORKDIR /app/product

COPY package*.json ./


RUN npm rm -rf node_modules && rm package-lock.json

RUN npm cache clean --force

RUN npm install

COPY . . 


CMD ["npm","run","dev"]