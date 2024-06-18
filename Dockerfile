# Base Image JDK
FROM openjdk:21

# Let's create an argument which contains the jar file path
ARG JAR_FILE=target/*.jar

# copy the jar file as petclinic.jar
COPY ${JAR_FILE} petclinic.jar


#Expose port number
EXPOSE 9090

# execute the jar file

ENTRYPOINT ["java", "-jar", "/petclinic.jar"]