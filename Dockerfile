FROM rust:1-alpine3.20
WORKDIR /app
COPY . .
RUN cargo build
CMD ["/bin/sh"]
