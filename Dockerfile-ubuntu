FROM ubuntu:latest
RUN apt update
RUN apt install -y curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal && . "$HOME/.cargo/env"
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustc --version && cargo --version && rustup --version
