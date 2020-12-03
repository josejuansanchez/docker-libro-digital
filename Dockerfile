FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install --no-install-recommends apt-utils -y && \
    apt-get install lib32z1 -y && \
    apt-get install libx11-6:i386 -y && \
    apt-get install libgtk2.0-0:i386 -y && \
    apt-get install libxt6:i386 -y && \
    apt-get install libsqlite3-0:i386 -y && \
    apt-get install libidn11:i386 -y && \
    apt-get install libxxf86vm1:i386 -y && \
    apt-get install libstdc++6:i386 -y && \
    apt-get install libcanberra-gtk-module:i386 -y && \
    apt-get install libasound2-plugins:i386 -y && \
    apt-get install libnss3:i386 -y && \
    apt-get install libcurl3-gnutls:i386 -y && \ 
    apt-get install libpangoxft-1.0-0:i386 -y && \ 
    apt-get install unzip -y

COPY libro.zip /root
RUN unzip /root/libro.zip -d /root && \
    rm /root/libro.zip && \
    chmod +x /root/libro/exeLinux

WORKDIR /root/libro

CMD ["/bin/bash", "-c", "/root/libro/exeLinux"]