FROM ubuntu:16.04

WORKDIR /app

COPY docker-compose.yml /app/

RUN docker-compose up -d
