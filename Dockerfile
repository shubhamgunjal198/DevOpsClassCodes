# Use official Tomcat image as base
FROM tomcat:9.0-jdk11

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat webapps
COPY target/addressbook.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
