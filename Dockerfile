FROM openjdk:8-jre-alpine

MAINTAINER yongk_liu@163.com

WORKDIR /opt

COPY build/libs/jenkins-demo.jar jenkins-demo.jar

EXPOSE 8008

ENTRYPOINT ["java"]

CMD ["-jar", "jenkins-demo.jar"]