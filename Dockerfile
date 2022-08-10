
#FROM openjdk:8
#FROM tomcat:8.0.20-jre8
#RUN apt-get update
#RUN apt-get install -y maven
#COPY pom.xml /JavaProject/FirstProject/pom.xml
#COPY src /src/main/java/MavenSample/app/App.java 
#COPY target /FirstProject*.war /usr/local/tomcat/webapps/FirstProject.war  
#WORKDIR  /JavaProject/FirstProject
#RUN mvn package
#CMD ["java", "-cp", "target/FirstProject-1.0-SNAPSHOT.jar", "MavenSample.app.App"]
FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/my-application.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
