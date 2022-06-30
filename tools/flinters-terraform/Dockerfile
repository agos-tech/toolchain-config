FROM docbibi/flinters:latest

ARG TERRAFORM_VERSION="1.2.4"

ARG TFSEC_VERSION="1.26.0"

ARG TERRAFORM_DOCS_VERSION="0.16.0"
ARG TERRAFORM_DOCS_CHECKSUM="328c16cd6552b3b5c4686b8d945a2e2e18d2b8145b6b66129cd5491840010182"

ARG TFLINT_VERSION="0.38.1"

# Install general dependencies
RUN apt update && \
    apt install -y --no-install-recommends \
    # Download and decompress
    curl unzip \
    # Add a new signed apt repository
    gnupg2 software-properties-common \
    # sha256sum
    coreutils \
    && apt clean

# terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt update && apt install terraform=${TERRAFORM_VERSION} && \
    apt clean

# terraform-docs
RUN curl \
    -L https://github.com/terraform-docs/terraform-docs/releases/download/v${TERRAFORM_DOCS_VERSION}/terraform-docs-v${TERRAFORM_DOCS_VERSION}-linux-amd64.tar.gz \
    --output terraform-docs.tgz && \
    echo "${TERRAFORM_DOCS_CHECKSUM} terraform-docs.tgz" | sha256sum -c && \
    tar xzf terraform-docs.tgz terraform-docs && \
    install terraform-docs -t /usr/local/bin && \
    rm -f terraform-docs*

# tfsec
COPY D66B222A3EA4C25D5D1A097FC34ACEFB46EC39CE.key .
RUN gpg --import D66B222A3EA4C25D5D1A097FC34ACEFB46EC39CE.key
RUN curl -L https://github.com/aquasecurity/tfsec/releases/download/v${TFSEC_VERSION}/tfsec-linux-amd64 \
    --output tfsec && \
    curl -L https://github.com/tfsec/tfsec/releases/download/v${TFSEC_VERSION}/tfsec-linux-amd64.D66B222A3EA4C25D5D1A097FC34ACEFB46EC39CE.sig \
    --output tfsec.sig && \
    gpg --verify tfsec.sig tfsec && \
    install tfsec -t /usr/local/bin && \
    rm tfsec tfsec.sig

# tflint
COPY 8CE69160EB3F2FE9.key .
RUN gpg --import 8CE69160EB3F2FE9.key
RUN curl --location --remote-name \
        https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/{tflint_linux_amd64.zip,checksums.txt,checksums.txt.sig} \
    && gpg --verify checksums.txt.sig \
    && fgrep --max-count 1 tflint_linux_amd64.zip checksums.txt | sha256sum -c \
    && unzip tflint_linux_amd64.zip tflint \
    && install tflint -t /usr/local/bin \
    && rm tflint tflint_linux_amd64.zip checksums.txt checksums.txt.sig

# Override the pre-commit configuration
COPY .pre-commit-config.yaml /app/src/

# Update the environments
RUN git init . && pre-commit run && pre-commit gc && rm -rf .git

# Update the permissions
RUN chmod -R a+rwX /app
