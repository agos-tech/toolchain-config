FROM node:12-alpine

# Azure Pipelines will use a new user to run the container. We need to
# make sure `useradd` is available, and that new users have access to
# the cached data.

RUN apk add --no-cache --virtual .pipeline-deps linux-pam readline \
    && apk add \
            bash \
            git \
            shadow \
    && apk del .pipeline-deps

WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn install --frozen-lockfile --production \
    && yarn cache clean \
    && chmod -R a+rwX /app/node_modules

LABEL "com.azure.dev.pipelines.agent.handler.node.path"="/usr/local/bin/node"
