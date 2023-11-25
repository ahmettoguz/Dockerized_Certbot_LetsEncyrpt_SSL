FROM ubuntu:latest

# Set the working directory
WORKDIR /app

RUN apt-get install -y \
    python3 \
    python3-pip

RUN pip install certbot

EXPOSE 80