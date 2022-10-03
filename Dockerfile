FROM node:alpine3.15
RUN apk update && apk upgrade && \
    apk add --no-cache git
WORKDIR /app
COPY package.json /app
RUN yarn
COPY . /app
RUN yarn build
