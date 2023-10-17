# Use the openjdk image as the base image (choose an appropriate Java version)
FROM openjdk:11

# Set the DEBIAN_FRONTEND to noninteractive
ARG DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get -y install git redis-server wget gnupg

# Install MongoDB (choose the appropriate MongoDB version)
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add - \
    && echo "deb http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list \
    && apt-get update && apt-get -y install mongodb-org

# Create a directory for your code
RUN mkdir /code

# Set the working directory
WORKDIR /code

# Copy your application code into the container
COPY . /code

# Build your Gradle project and create the JAR file
RUN ./gradlew bootJar

# Specify the command to run your application
CMD ["java", "-jar", "build/libs/your-app.jar"]
