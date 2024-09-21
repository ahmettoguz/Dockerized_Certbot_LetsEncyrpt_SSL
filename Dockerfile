# Use Alpine as the base image
FROM alpine:latest

# Install Certbot
RUN apk add --no-cache certbot

# Expose port 80
EXPOSE 80