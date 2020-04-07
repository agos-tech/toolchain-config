FROM docbibi/flinters:latest

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
            curl \
            gnupg \
    && apt-get clean
RUN curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
    && curl -sSL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://deb.nodesource.com/node_12.x buster main" | tee /etc/apt/sources.list.d/nodesource.list \
    && echo "deb-src https://deb.nodesource.com/node_12.x buster main" | tee -a /etc/apt/sources.list.d/nodesource.list \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
            nodejs \
            yarn \
    && apt-get clean

# Override the pre-commit configuration
COPY .pre-commit-config.yaml /app/src/

# Update the environments
RUN git init . && pre-commit run && pre-commit gc && rm -rf .git

# Update the permissions
RUN chmod -R a+rwX /app
