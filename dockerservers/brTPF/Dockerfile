FROM openjdk:8-jdk
RUN mkdir -p /server
WORKDIR /server
COPY ldf-server-brtpf.jar .
ENTRYPOINT ["java", "-Xmx16g", "-jar", "ldf-server-brtpf.jar", "config.json"]