#FROM tomcat:8.0-alpine
FROM tomcat:7-jdk8-openjdk
LABEL maintainer="admin@itersdesktop.com"
# aws cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
RUN ./aws/install && aws --version
ARG AKIA6GCVH37BE2KCKMW2
ARG N0wpOFCzB3U0abx82LySaFIKc7+cwzg8KLDODZNN
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
RUN aws s3 cp s3://codepipeline-ap-south-1-808128246499/*.war/MoonPageWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]