FROM openjdk:17
COPY target/sampleDemo.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
