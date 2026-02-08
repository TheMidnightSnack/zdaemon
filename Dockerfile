# Use Ubuntu as base image
FROM ubuntu:latest

# Install necessary packages
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y libc6-i386 libstdc++6:i386 wget tar

# Working Directory
WORKDIR /zdaemon

# Download
RUN /bin/sh -c "VERSION=$(wget -qO- http://downloads.zdaemon.org/version.txt | head -n 1 | tr -d '. \r\n') && \
    wget -O zdaemon-latest.tgz http://downloads.zdaemon.org/zserv${VERSION}_linux26.tgz"

# Extract
RUN tar zfx zdaemon-latest.tgz --strip 1

# Run
CMD ./zserv -iwad "/zdaemon/iwads/$IWAD" -waddir "/zdaemon/pwads" -file $PWADS -config "/zdaemon/cfg/$CFG"
