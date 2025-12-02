FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package
ENTRYPOINT ["java", "-jar", "target/seating-system-0.0.1-SNAPSHOT.jar"]