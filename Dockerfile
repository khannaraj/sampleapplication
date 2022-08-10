FROM openjdk
ENTRYPOINT ["java","-Dspring.profiles.active=dt","-jar","target/sampleapplication-1.0.war"]
