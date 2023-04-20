FROM openjdk:8-jdk
RUN mkdir -p /server
WORKDIR /server
COPY ldf-server.jar .
ENTRYPOINT ["java", "-Xmx16g", "-jar", "ldf-server.jar", "config.json"]

