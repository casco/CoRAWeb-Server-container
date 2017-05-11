FROM ubuntu:latest

RUN dpkg --add-architecture i386 
RUN apt-get update
RUN apt-get install -y libx11-6:i386
RUN apt-get install -y libgl1-mesa-glx:i386 
RUN apt-get install -y libfontconfig1:i386 
RUN apt-get install -y libssl1.0.0:i386 
RUN apt-get install -y curl
RUN apt-get install -y unzip

WORKDIR /app
RUN curl get.pharo.org | bash

EXPOSE 8080 8000 8888

ADD coraweb-srv.changes /app
ADD coraweb-srv.image /app

ENTRYPOINT ["/bin/bash"]
