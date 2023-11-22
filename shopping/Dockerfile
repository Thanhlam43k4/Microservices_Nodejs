FROM node:14

WORKDIR /app/shopping

COPY package.json .


RUN npm install

COPY . . 


VOLUME [ "/app/shopping/node_modules" ]

CMD ["npm","run","dev"]