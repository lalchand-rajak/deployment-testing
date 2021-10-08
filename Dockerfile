FROM openjdk:8-jdk-alpine
COPY my-app/target/my-app-1.0-SNAPSHOT.jar my-app-1.0-SNAPSHOT.jar
ENV JAVA_OPTS="-Xmx512m -Xms256m" 
EXPOSE 8080
ENTRYPOINT ["java","-jar","my-app-1.0-SNAPSHOT.jar"]
