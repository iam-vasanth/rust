FROM ubuntu:latest
RUN apt update
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal && source "$HOME/.cargo/env"
RUN rustc --version && cargo --version && rustup --version
