ARG TAG=19.4.0-alpine
FROM node:$TAG

WORKDIR /app

ENTRYPOINT ["npm"]