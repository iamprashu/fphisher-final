FROM debian:latest
LABEL MAINTAINER="https://github.com/iamprashu"

WORKDIR /fphisher/
ADD . /fphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./fphisher.sh"]
