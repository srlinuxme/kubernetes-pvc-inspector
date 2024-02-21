FROM ubuntu:jammy

RUN apt update --fix-missing
RUN apt upgrade -y
RUN apt install -y \
    sudo \
    curl \
    dnsutils \
    rclone \
    rsync \
    net-tools \
    iputils-ping \
    vim \
    openssh-client  \
    zip

WORKDIR /pvc

RUN mkdir -p ~/.config/rclone
COPY rclone-config/rclone.conf ~/.config/rclone
