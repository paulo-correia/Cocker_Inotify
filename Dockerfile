# Use an official Alpine Linux as a parent image
FROM alpine:latest

LABEL maintainer Paulo Correia github.com/paulo-correia 

# Install or Update inotify-tools
RUN apk --update add inotify-tools && \
    mkdir inotify