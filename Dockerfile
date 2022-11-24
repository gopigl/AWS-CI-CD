#FROM tomcat:8.0-alpine
FROM tomcat:7-jdk8-openjdk
LABEL maintainer="admin@itersdesktop.com"
ADD https://codepipeline-ap-south-1-808128246499.s3.ap-south-1.amazonaws.com/*.war/MoonPageWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]