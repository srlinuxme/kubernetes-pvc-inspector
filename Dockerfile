FROM ubuntu:jammy

RUN apt update --fix-missing
RUN apt upgrade -y
RUN apt install -y \
    sudo \
    curl \
    rclone \
    rsync \
    net-tools \
    vim \
    openssh-client

RUN mkdir -p ~/.config/rclone
COPY rclone-config/rclone.conf ~/.config/rclone