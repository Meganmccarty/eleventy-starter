ARG TAG=19.4.0-alpine
FROM node:$TAG
RUN apk update && apk add bash

# Explicitly add chromium to get support for ARM64 M1/M2 chips, and set env vars
RUN apk update && apk add bash chromium
#RUN apk add chromium

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 8080
CMD ["/bin/bash"]