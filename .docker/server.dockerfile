FROM node:latest

LABEL author="Drew Althage"

ENV NODE_ENV=development 
ENV PORT=3333

COPY ./server/ /var/www
WORKDIR /var/www

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]