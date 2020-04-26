# Use Ubuntu as base image
FROM ubuntu:latest

# Install necessary packages
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y libc6-i386 libstdc++6:i386 wget tar 

# Working Directory
WORKDIR /zdaemon

# Download
RUN wget -O zdaemon-latest.tgz http://downloads.zdaemon.org/zserv11012_linux26.tgz

# Extract
RUN tar zfx zdaemon-latest.tgz --strip 1

# Run
