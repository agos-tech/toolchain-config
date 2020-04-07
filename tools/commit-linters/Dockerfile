FROM node:12-alpine3.11

RUN apk add --no-cache --virtual .pipeline-deps linux-pam readline \
    && apk add \
            bash \
            git \
            make \
            shadow \
            sudo \
    && apk del .pipeline-deps

WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn install --frozen-lockfile --production \
    && yarn cache clean

# Make sure new users can also access the cached data
RUN chmod -R a+rwX /app

LABEL "com.azure.dev.pipelines.agent.handler.node.path"="/usr/local/bin/node"
