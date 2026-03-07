FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
RUN apt update
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal && . "$HOME/.cargo/env"
RUN rustc --version && cargo --version && rustup --version
