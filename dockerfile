FROM tomcat:10-jdk17

# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/addressbook.war /var/lib/jenkins/workspace/job2-docker/target/addressbook.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
