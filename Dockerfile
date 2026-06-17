FROM node:18-LTS
WORKDIR /app

COPY package.json /app/
RUN npm install

COPY server.js /app/
COPY /public /app/public/
COPY /db /app/db/

EXPOSE 3000

CMD ["npm" , "start"]
