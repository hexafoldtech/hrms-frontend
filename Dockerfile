FROM node:16
WORKDIR /usr/src/app/
COPY package*.json  yarn.lock ./

RUN npm install --force --global yarn
RUN yarn
COPY . .
EXPOSE 3000

CMD yarn start