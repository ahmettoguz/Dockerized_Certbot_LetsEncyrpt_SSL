FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip

RUN pip install certbot

EXPOSE 80