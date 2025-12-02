FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

# Fix permission issue for mvnw
RUN chmod +x mvnw

# Build the JAR inside the container
RUN ./mvnw clean package

# Run the app
ENTRYPOINT ["java", "-jar", "target/seating-system-0.0.1-SNAPSHOT.jar"]