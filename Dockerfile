# Use the OpenJDK Alpine image (lightweight)
FROM openjdk:17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the generated JAR file from the target directory to the container
COPY target/chat-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
