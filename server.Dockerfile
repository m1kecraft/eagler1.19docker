FROM ubuntu:jammy

WORKDIR /mc

RUN apt-get update

RUN apt-get install curl openjdk-17-jre openjdk-17-jdk -y

COPY server /mc

COPY runserver.sh /mc

RUN chmod +x runserver.sh

CMD ["bash", "runserver.sh"]
