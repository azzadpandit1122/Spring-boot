# FROM eclipse-temurin:17-jdk-alpine
# VOLUME /tmp
# COPY target/*.jar app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]
# EXPOSE 8080

FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp

# Ensure the target directory exists
RUN mkdir /target

# Copy the necessary files to the target directory
COPY target/*.jar /target/app.jar

ENTRYPOINT ["java","-jar","/target/app.jar"]
EXPOSE 8080