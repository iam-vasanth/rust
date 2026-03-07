FROM rust:1-alpine3.20 AS builder
RUN cargo build
COPY . .
CMD [ "cargo", "run", "--bin", "ch_2-3" ]
