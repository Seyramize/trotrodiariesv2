FROM node:15


RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install 

COPY . .

EXPOSE 8000

CMD ["yarn", "build"]