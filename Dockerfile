FROM --platform=linux/amd64 maven:3.8.8-eclipse-temurin-17 AS build
LABEL authors="kristina"

WORKDIR /app

COPY pom.xml ./

COPY src ./src

RUN mvn clean package -DskipTests

FROM --platform=linux/amd64 eclipse-temurin:17-jre
LABEL authors="kristina"

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
