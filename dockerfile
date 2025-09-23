FROM tomcat:10-jdk17

# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/addressbook.war /usr/local/tomcat/webapps/addressbook.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
