FROM node:10.15-alpine
LABEL maintainer="ansgar@elbstack.com"
LABEL name="dashoefer-iks-graphql-proxy"

COPY package.json package-lock.json /app/

WORKDIR /app

RUN npm install

COPY . /app

ENV NODE_ENV=production
ENV PORT=80

EXPOSE 80

ENTRYPOINT ["npm", "start"]
