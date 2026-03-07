FROM rust:1-alpine3.20
RUN apk add --no-cache git
WORKDIR /app
RUN git clone https://github.com/rust-lang/rust.git .
RUN cargo build
CMD ["/bin/sh"]
