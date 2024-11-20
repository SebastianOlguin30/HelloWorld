FROM openjdk:8-jdk-alpine
COPY target/myapp.jar /app/myapp.jar
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
EXPOSE 8080
