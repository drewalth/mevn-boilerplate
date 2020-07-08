FROM node:latest

LABEL author="Drew Althage"

ENV NODE_ENV=development 
ENV PORT=8080

COPY ./client/ /var/www
WORKDIR /var/www

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]