FROM node:14

WORKDIR /app/customer

COPY package.json .


RUN npm install

RUN npm install bcryptjs

COPY . . 


CMD ["npm","run","dev"]