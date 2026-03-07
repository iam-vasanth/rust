FROM ubuntu:latest
RUN apt update && apt install fortune cowsay -y
ENV PATH="/usr/games:$PATH"
CMD ["/bin/bash", "-c", "while true; do fortune | cowsay; sleep 10; done"]
