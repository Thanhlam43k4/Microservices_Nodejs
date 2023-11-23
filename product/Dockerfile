FROM node:14

WORKDIR /app/

COPY package*.json ./

# RUN npm cache clean --force

RUN npm install

COPY . . 

CMD ["npm","run","dev"]