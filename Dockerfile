FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
ENV PORT 8080
COPY ./ java
WORKDIR java
RUN apt update
RUN echo 'hi'
RUN apt install maven -y
RUN mvn install
WORKDIR target
ENTRYPOINT exec java $JAVA_OPTS -jar knote-java-1.0.0.jar
