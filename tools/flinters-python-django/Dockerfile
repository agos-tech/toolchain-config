FROM docbibi/flinters:latest

# Override the pre-commit configuration
COPY .pre-commit-config.yaml pyproject.toml /app/src/

# Update the environments
RUN git init . && pre-commit run && pre-commit gc && rm -rf .git

# Update the permissions
RUN chmod -R a+rwX /app
