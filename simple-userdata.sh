#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
cd /var/www/html
echo "Hello World" > index.html
echo "ERROR!!" > error.html
chkconfig httpd on
curl http://169.254.169.254/latest/meta-data/local-ipv4 >>index.html
curl http://169.254.169.254/latest/placement/availability-zone >>index.html
