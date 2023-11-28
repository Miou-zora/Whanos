FROM jenkins/jenkins:lts-jdk11

# COPY PARTS
COPY jenkins.yml jenkins.yml
COPY job_dsl.groovy job_dsl.groovy
COPY plugins.txt plugins.txt
COPY jenkins.env jenkins.env

# ENV PARTS
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG=jenkins.yml

# ROOT PARTS
USER root

# INSTALL ALL DEPENDENCIES
RUN apt-get update -y && apt-get upgrade -y

# JENKINS PARTS
USER jenkins

# INSTALL ALL PLUGINS
RUN jenkins-plugin-cli -f plugins.txt