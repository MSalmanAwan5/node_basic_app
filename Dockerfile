FROM node

WORKDIR /goal-app

COPY package.json .

# Install the required packages

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node", "server.js" ]