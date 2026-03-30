FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.546c2nq.mongodb.net
ENV MONGODB_USERNAME zeljkoberatovic
ENV MONGODB_PASSWORD eI3R3UfNlJgWJe17

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]