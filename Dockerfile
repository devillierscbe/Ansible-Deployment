FROM tomcat:9.0.69-jdk11-corretto
COPY target/SAMPLE*.war /usr/bin/local/tomcat/webapps/SAMPLE.war
