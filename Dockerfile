
FROM openjdk:8
FROM tomcat:8.0.20-jre8
EXPOSE 1234
#RUN apt-get update
#RUN apt-get install -y maven
COPY pom.xml /JavaProject/FirstProject/pom.xml
COPY src /src/main/java/MavenSample/app/App.java 
COPY target /FirstProject*.war /usr/local/tomcat/webapps/FirstProject.war  
#WORKDIR  /JavaProject/FirstProject
#RUN mvn package


