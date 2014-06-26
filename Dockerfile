FROM ubuntu:12.04
MAINTAINER Victoria Blessing "vblessing@arch.tamu.edu"

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless
ADD https://updates.jenkins-ci.org/latest/jenkins.war /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]