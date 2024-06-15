# Base Image JDK
FROM openjdk:11

# Let's create an argument which contains the jar file path
ARG JAR_FILE=target/*.jar

# copy the jar file as petclinic.jar
COPY ${JAR_FILE} petclinic.jar

# execute the jar file

ENTRYPOINT ["java", "-jar", "/petclinic.jar"]