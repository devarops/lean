FROM ubuntu:latest
WORKDIR /workdir
RUN apt update && apt install --yes curl git make && \
    curl -sSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y
ENV PATH="/root/.elan/bin:${PATH}"
COPY . .
