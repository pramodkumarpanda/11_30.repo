FROM centos:7
#RUN yum install epel-release -y
RUN yum install java-1.8.0-openjdk-devel -y
WORKDIR /opt/tomcat
RUN curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-*/* /opt/tomcat/
WORKDIR /opt/tomcat/webapps
COPY catlog/target/catlog.war .
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
