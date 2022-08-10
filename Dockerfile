FROM openjdk
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-Dspring.profiles.active=dt","-jar","/app.war"]