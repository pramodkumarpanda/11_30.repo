FROM centos:7
RUN yum install httpd* -y
RUN echo "Green Deployment" > /var/www/html/index.html
CMD /usr/sbin/httpd -DFOREGROUND
