FROM node:14

WORKDIR /app/product

COPY package.json .


RUN npm install

COPY . . 


VOLUME [ "/app/product/node_modules" ]

CMD ["npm", "run", "dev"]