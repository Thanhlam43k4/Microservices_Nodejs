FROM node:14

WORKDIR /app/customer

COPY package*.json ./

RUN npm cache clean --force

RUN npm install

RUN npm install bcryptjs

COPY . . 


VOLUME [ "/app/customer/node_modules" ]


CMD ["npm","run","dev"]