FROM openjdk:8-jdk-alpine
COPY target/myapp-0.0.1-SNAPSHOT.jar /app/myapp.jar
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
EXPOSE 8080
