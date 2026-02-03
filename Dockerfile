# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim AS build

# Set working directory
WORKDIR /app

# Copy the built jar into the container
COPY target/cards-0.0.1-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
