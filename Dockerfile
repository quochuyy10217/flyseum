FROM maven:3.8.4-openjdk-17
EXPOSE 8080
WORKDIR /flyseum
COPY . /flyseum/
RUN mvn package
CMD java -jar /flyseum/target/dependency/webapp-runner.jar /flyseum/target/*.war
