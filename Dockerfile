FROM alpine

RUN apk add --no-cashe \
    openjdk11 --repository=http://dlcdn.alpinelinux.org/alpine/edge/community \
    maven \
    curl

VOLUME home/installapp

WORKDIR home/installapp

COPY ./ home/instalapp

ARG JAR_FILE=target/online-library-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} onlinelibrary.jar

EXPOSE 8080

CMD java -jar onlinelibrary.jar