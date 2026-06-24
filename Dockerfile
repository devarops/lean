FROM ubuntu:latest
WORKDIR /workdir
COPY . .
RUN apt update && apt install --yes \
    curl \
    git \
    make
RUN curl -sSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y
ENV PATH="/root/.elan/bin:${PATH}"
