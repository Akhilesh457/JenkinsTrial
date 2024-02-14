FROM openjdk:17
EXPOSE 8080
ADD target/trial-application.jar trial-application.jar
ENTRYPOINT ["java" ,"-jar","/trial-application.jar"]
