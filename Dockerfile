FROM ubuntu:latest

RUN dpkg --add-architecture i386 \
  && apt-get update && apt-get install -y \
    libx11-6:i386 \
    libgl1-mesa-glx:i386 \ 
    libfontconfig1:i386 \
    libssl1.0.0:i386 \
    curl \
    unzip \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN curl get.pharo.org | bash

ADD coraweb-srv.changes /app
ADD coraweb-srv.image /app

EXPOSE 8080 8000 8888

# /app/pharo /app/coraweb-srv.image --no-quit
ENTRYPOINT ["/app/pharo","/app/coraweb-srv.image","--no-quit"]
#ENTRYPOINT ["/bin/bash"]
