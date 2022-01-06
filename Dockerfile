FROM jenkins/jenkins
 
USER root
RUN apt-get -y update && apt-get install -y maven
