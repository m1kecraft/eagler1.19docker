FROM ubuntu:jammy

WORKDIR /mc

RUN apt-get update

RUN apt-get install curl openjdk-17-jre openjdk-17-jdk -y

COPY server /mc

COPY runbungee.sh /mc

RUN chmod +x runbungee.sh

CMD ["bash", "runbungee.sh"]
