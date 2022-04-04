FROM python:3.8-slim-bullseye

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
            git \
    && apt-get clean

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir --requirement /tmp/requirements.txt \
    && rm /tmp/requirements.txt

RUN mkdir -p /app/cache
ENV PRE_COMMIT_HOME /app/cache/pre-commit

WORKDIR /app/src

# Define the pre-commit configuration
COPY .pre-commit-config.yaml /app/src/

# Run pre-commit once to install the environments
RUN git init . && pre-commit run && rm -rf .git

# Make sure new users can also access the cached data
RUN chmod -R a+rwX /app
