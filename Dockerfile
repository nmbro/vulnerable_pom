FROM tomcat:9.0.59-jdk11

COPY src/ /exploit/src
COPY pom.xml /exploit

RUN apt update && apt install maven -y

WORKDIR /exploit/

RUN mvn clean package
RUN mv /exploit/target/exploit.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
