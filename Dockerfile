FROM jenkins/jenkins:alpine-jdk11  
USER root
RUN apk update && apk add docker
COPY docker-jenkins.sh /usr/local/bin/docker-jenkins.sh
RUN chmod +x /usr/local/bin/docker-jenkins.sh
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/docker-jenkins.sh"]
