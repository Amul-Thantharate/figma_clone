FROM node:latest

# Create app directory

WORKDIR /usr/src/app

# Install app dependencies

COPY package*.json ./

RUN npm install

# Bundle app source

COPY .env.local /usr/src/app/.env.local

COPY . .

EXPOSE 3000

CMD npm run dev