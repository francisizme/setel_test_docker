FROM alpine as source
WORKDIR /app/src

RUN apk add git

ARG GIT_BRANCH
ARG GIT_URL

RUN git clone -b $GIT_BRANCH $GIT_URL

FROM node:12-alpine as build
WORKDIR /app/src

COPY --from=source /app/src/setel_test_payment_service .
COPY .env .env

RUN npm install
RUN npm install -g pm2
RUN npm run build

ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

EXPOSE 3000
EXPOSE 3001