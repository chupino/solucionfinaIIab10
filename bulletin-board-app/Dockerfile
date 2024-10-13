FROM node:18

WORKDIR /usr/src/app
COPY package.json .
RUN npm install

EXPOSE 8080

COPY . .

HEALTHCHECK --interval=5s CMD curl --fail http://localhost:8080 || exit 1

CMD [ "npm", "start" ]
