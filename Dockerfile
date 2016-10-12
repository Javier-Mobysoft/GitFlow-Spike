FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

COPY target/*.war /usr/local/tomcat/webapps/demo.war


EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]