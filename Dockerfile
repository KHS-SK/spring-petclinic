FROM adoptopenjdk/openjdk11
RUN chmod u+x mvnw
CMD ["./nvmw", "clean", "package"]
ARG JAR_FILE_PATH=target/*.jar
COPY ${JAR_FILE_PATH} spring-petclinic.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]
