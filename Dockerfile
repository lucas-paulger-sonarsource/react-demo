# syntax = docker/dockerfile:1
FROM node:20-slim

ARG SONARQUBE_SCANNER_VERSION=4

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && npm i -g sonarqube-scanner@^${SONARQUBE_SCANNER_VERSION}